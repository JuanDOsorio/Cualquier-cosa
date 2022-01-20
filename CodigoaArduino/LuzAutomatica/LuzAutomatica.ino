int sensorLuzIn = A0, sensorMovIn = 7, selectModeIn = 8;
int salidaLed1 = 12, salidaLed2 = 13;
int status1 = 0;
int mode = 0, modeC = 0;
int mov = 0, movC = 0;
int con = 0;
int luzL1 = 0,luzL1C = 0;
int luzL2 = 0, luzL2C = 0;

void setup() {
  pinMode(selectModeIn, INPUT);
  pinMode(sensorMovIn, INPUT);
  pinMode(salidaLed1, OUTPUT);
  pinMode(salidaLed2, OUTPUT);
  Serial.begin(9600);
  Serial.println("Programa Inicializado");
}

void loop() {
  
  mode = digitalRead(selectModeIn);
  mov = digitalRead(sensorMovIn);
  
  if (analogRead(sensorLuzIn)<1017){
    luzL1 = 5;
    luzL2 = 5;
  }else if(analogRead(sensorLuzIn)<1023){
    luzL1 = 5;
    luzL2 = 0;
  }else {
    luzL1 = 0;
    luzL2 = 0;
  }
  
  if(luzL2 != luzL2C || luzL1 != luzL1C){
    Serial.println("Ajustando Iluminacion");
  }
  if(mode != modeC){
    Serial.println("Cambiando de Modo");
  }
  if(mov != movC && mode != 1){
    if(mov == 1){
      Serial.println("Movimiento Detectado");
    }else {
      Serial.println("Sin Movimiento");
    }
  }  
  if(mode == modeC && mov == movC && luzL2 == luzL2C && luzL1 == luzL1C){
    con++;
  }else if (mode == 0 && mov == 0){
    con = 0;
    digitalWrite(salidaLed1, LOW);
    digitalWrite(salidaLed2, LOW);  
    Serial.println("Sin movimientos, apagando");
  }else if(mode == 0 && mov == 1){
    con = 0;
    digitalWrite(salidaLed1, luzL1);
    digitalWrite(salidaLed2, luzL2);    
    Serial.println("Modo Dia o Noche, Iluminacion Automatica Activada");
  }else if(mode == 1){
    con = 0;
    digitalWrite(salidaLed1, luzL1); 
    digitalWrite(salidaLed2, luzL2);  
    Serial.println("Modo Lectura, Iluminacion Automatica Activada");  
  }else { 
    analogWrite(salidaLed1, LOW); 
  }if(con == 0){
      Serial.print("-------------------------------------------------- lectura No ");
      Serial.println(status1);
      status1++;
  }  
  delay(500);
  modeC = mode;
  movC = mov;
  luzL2C = luzL2;
  luzL1C = luzL1;
}
