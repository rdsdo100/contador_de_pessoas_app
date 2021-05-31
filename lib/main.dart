import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()




  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode Entrar";
  void _changePeople(int delta){
    setState(() {
      _people += delta;

      if(_people <0){
        _infoText= "Erro!";

      } else if(_people <= 10){
        _infoText = "Pode Entrar";
      }  else if(_people >= 10){
      _infoText = "Esta Cheio";
    }


    });
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Pessas: $_people" ,
          style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold ),),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Padding(padding: EdgeInsets.all(10) ,
              child:   FlatButton(
                child: (Text("+1" , style: TextStyle(fontSize: 40, color: Colors.white),)),
                onPressed: (){_changePeople(1);},

              ),
            ),

            Padding(padding: EdgeInsets.all(10) ,
              child:   FlatButton(
                child: (Text("-1" , style: TextStyle(fontSize: 40, color: Colors.white),)),
                onPressed: (){_changePeople(-1);},

              ),
            )
            ,
          ],
        ),


        Text(_infoText ,
          style: TextStyle(color: Colors.white , fontStyle: FontStyle.italic,
              fontSize: 30
          ),)


      ],
    ) ;
  }
}



