import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String str1="",str2="",str3="",str4="",str5="",str6="",str7="",str8="",str9="";
  String winner="",turn="";
  int o=0,x=0;
  int n=0;
  String img="";

  void win(){
    if(str1=="X" && str2=="X" && str3=="X"){
      winner="X";
    } else if(str1=="o" && str2=="o" && str3=="o"){
      winner="o";
    } else if(str1=="X" && str4=="X" && str7=="X"){
      winner="X";
    } else if(str1=="o" && str4=="o" && str7=="o"){
      winner="o";
    } else if(str2=="X" && str5=="X" && str8=="X"){
      winner="X";
    } else if(str2=="o" && str5=="o" && str8=="o"){
      winner="o";
    } else if(str3=="X" && str6=="X" && str9=="X"){
      winner="X";
    } else if(str3=="o" && str6=="o" && str9=="o"){
      winner="o";
    } else if(str4=="X" && str5=="X" && str6=="X"){
      winner="X";
    } else if(str4=="o" && str5=="o" && str6=="o"){
      winner="o";
    } else if(str1=="X" && str5=="X" && str9=="X"){
      winner="X";
    } else if(str1=="o" && str5=="o" && str9=="o"){
      winner="o";
    } else if(str3=="X" && str5=="X" && str7=="X"){
      winner="X";
    } else if(str3=="o" && str5=="o" && str7=="o"){
      winner="o";
    } else if(str7=="X" && str8=="X" && str9=="X"){
      winner="X";
    } else if(str7=="o" && str8=="o" && str9=="o"){
      winner="o";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("X = ${x}",style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w500),),
                  ElevatedButton(onPressed: (){
                    str1=str2=str3=str3=str4=str5=str6=str7=str8=str9="";
                    o=0;
                    x=0;
                    n=0;
                    winner="";
                    setState(() {});
                  }, child: Text("NEW GAME")),
                  Text("O = ${o}",style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str1=="" && winner==""){
                          if(n%2==0){
                            str1="X";
                            x++;
                            turn="o";
                            n++;
                          } else {
                            str1="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str1!=""?Image.asset("image/$str1.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str2=="" && winner==""){
                          if(n%2==0){
                            str2="X";
                            x++;
                            n++;
                            turn="o";
                          } else {
                            str2="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str2!=""?Image.asset("image/$str2.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str3=="" && winner==""){
                          if(n%2==0){
                            str3="X";
                            x++;
                            n++;
                            turn="o";
                          } else {
                            str3="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str3!=""?Image.asset("image/$str3.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str4=="" && winner==""){
                          if(n%2==0){
                            str4="X";
                            x++;
                            n++;
                            turn="o";
                          } else {
                            str4="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str4!=""?Image.asset("image/$str4.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str5=="" && winner==""){
                          if(n%2==0){
                            str5="X";
                            x++;
                            n++;
                            turn="o";
                          } else {
                            str5="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str5!=""?Image.asset("image/$str5.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str6=="" && winner==""){
                          if(n%2==0){
                            str6="X";
                            x++;
                            n++;
                            turn="o";
                          } else {
                            str6="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str6!=""?Image.asset("image/$str6.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str7=="" && winner==""){
                          if(n%2==0){
                            str7="X";
                            x++;
                            n++;
                            turn="o";
                          } else {
                            str7="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str7!=""?Image.asset("image/$str7.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str8=="" && winner==""){
                          if(n%2==0){
                            str8="X";
                            x++;
                            n++;
                            turn="o";
                          } else {
                            str8="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str8!=""?Image.asset("image/$str8.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(str9=="" && winner==""){
                          if(n%2==0){
                            str9="X";
                            x++;
                            n++;
                            turn="o";
                          } else {
                            str9="o";
                            o++;
                            n++;
                            turn="x";
                          }
                        }
                        win();
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: str9!=""?Image.asset("image/$str9.png",fit: BoxFit.fill,):Text(""),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              color: Colors.yellow,
              child: Text("Winner : ${winner}" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
          ],),
      ),
    );
  }
}
