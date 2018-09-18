#include <iostream>
#include <cstdlib>
#include <fstream>

using namespace std;

int main(){
  int num, semilla=4;
  char cadena[128];
  //Se crea un fichero
  ofstream fs("file.txt");

  //Se ingresa una semilla para hacer más aleatorio el númegro generado
  srand(semilla);

  //Se genera un número aleatorio
  for(int i=0; i<10; i++){
    num=1+rand() % 50;
  }

  if(num % 2 == 0){
    num=1;
  }
  else{
    num=0;
  }

  //Se envía el número al archivo file.txt
  fs << num << endl;
  //Se cierra el fichero
  fs.close();

  //Se abre un fichero
   ifstream fe("file.txt");

   // Leemos el fichero
   fe.getline(cadena, 128);
   cout << cadena << endl;

   return 0;
}
