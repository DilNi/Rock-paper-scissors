import 'dart:io';
import 'dart:math';


enum game {rock,paper,scissors}

void main(){

Random r=new Random();

var answer=true;
while(answer==true){
  int player=0,pc=0;
while(player<3&&pc<3)
{print("Wanna play rock-paper-scissors? Choose one.");
var a =stdin.readLineSync();

var b=r.nextInt(3);

 if(a==game.paper.name && b==game.paper.index || a==game.rock.name && b==game.rock.index ||a==game.scissors.name && b==game.scissors.index){
  print("pc:"+ game.values[b].name);
  print("berabere");
  print("Pc score: $pc");
  print("Player score: $player");
  print("---------------");

}else if(a==game.rock.name && b==game.paper.index || a==game.paper.name && b==game.scissors.index || a==game.scissors.name && b==game.rock.index){
  print("pc:"+ game.values[b].name);
  print("kaybettiniz");
  pc++;
  print("Pc score: $pc");
  print("Player score: $player");
  print("---------------");
}

else if(a==game.scissors.name && b==game.paper.index || a==game.paper.name && b==game.rock.index ||a==game.rock.name && b==game.scissors.index){
  print("pc:"+ game.values[b].name);
  print("kazanadınız");
  player++;
  print("Pc score: $pc");
  print("Player score: $player");
  print("---------------");
}
}
if(player==3){
  print("player win.");
}else {
  print("pc win.");
}
print("Play again?? Yes or no!!");
 var answer1=stdin.readLineSync();
 if(answer1=="no"){
  answer=false;
 }
}
}