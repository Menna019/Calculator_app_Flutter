// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num1 = 0;
  int num2 = 0;
  num result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 199, 223, 243),
        appBar: AppBar(
          backgroundColor: Colors.blue,
        title: const Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
          fontSize: 35,
          fontFamily: "Nunito-VariableFont_wght",
            ),
          ),
          centerTitle: true,
        ),

        body: Row(
              children: [
               
               const  SizedBox(
              width: 10,
              height: 20,
                ),
                
                //First Number
                Column(
                  children: [
                    
                  const  Text(
                "First Number",
                style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 59, 118, 167),
                fontWeight: FontWeight.bold,
                ),
                ),
            
                 Text(
                  "$num1",
                style:const  TextStyle(
                  fontSize: 40,
                  ),
                ),
            
                ElevatedButton(
                  onPressed: (){
                  setState(() {
                    num1++;
                  });
                },
                 // ignore: sort_child_properties_last
                 child:const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black,
                  ),
                   style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(255, 103, 173, 229),
                    shadowColor: Colors.black,
                    elevation: 6,
                   ),
                 ),
            
                  ElevatedButton(onPressed: (){
                  setState(() {
                    num1--;
                  });
                 },
                  // ignore: sort_child_properties_last
                  child:const  Icon(
                    Icons.remove,
                    size: 20,
                    color: Colors.black,
                  ) ,
            
                   style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(255, 103, 173, 229),
                    shadowColor: Colors.black,
                    elevation: 6,
                   ),
                 ),
                 
                ],
                ),
               
            
               const  SizedBox(
                  width: 7,
                  height: 150,
                ),
               
               
               //additional +
                 
                   Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: (){
                          setState(() {
                            result=num1+num2;
                          });
                        },
                         icon: const Icon(
                          Icons.add,color: Colors.white,
                          ),
                          label:const Text("Additional",
                          style: TextStyle(
                            color: Colors.white,
                            )
                          ),
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue
                          ),
                          ),
                    
                          const SizedBox(
                            height: 30,
                          ),
            
                          //Subtraction -
            
                        ElevatedButton.icon(
                        onPressed: (){
                          setState(() {
                            result=num1-num2;
                          });
                        },
                         icon: const Icon(Icons.remove,
                         color: Colors.white),
                          label:const Text(
                            "Subtraction",
                            style: TextStyle(
                              color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                          ),
                    
                          const SizedBox(
                           height: 30,
                           
                          ),
            
                          //Multiplication *
                    
                          Column(
                            children: [
                             ElevatedButton(onPressed: (){
                              setState(() {
                                result=num1*num2;
                              });
                             }, 
                             child: const Text(" × Multiplication",
                             style: TextStyle(color: Colors.blue,fontSize: 15)
                             ),
                             )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
            
                          //division /
                           Column(
                            children: [
                             ElevatedButton(onPressed: (){
                              setState(() {
                                result=num1/num2;
                              });
                             }, 
                             child: const Text("÷ Division",
                             style: TextStyle(color: Colors.blue,fontSize: 20),
                             ),
                             ),
                            ],
                          ),
            
                        const SizedBox(
                         height: 20,
                        ),
            
                          Container(
                            alignment: Alignment.center,
                            width: 160,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            child: Text("$result",
                            style: const TextStyle(fontSize: 20),
                            ),
                          ),

                         
                        const SizedBox(
                          height: 8,
                        ),
                         const Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/calculator.gif"),
                              )
                            ],
                          ),
                            ],
                          ),

                          
                     
                        
           
           
              //Second Number
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const Text(
                "Second Number",
                style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 59, 118, 167),
                fontWeight: FontWeight.bold,
                ),
                ),
                 
                 Text(
                  "$num2",
                  style:const  TextStyle(
                    fontSize: 40,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      num2++;
                    });
                  },
                   // ignore: sort_child_properties_last
                   child: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black,
                  ),
                   style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(255, 103, 173, 229),
                    shadowColor: Colors.black,
                    elevation: 6,
                   ),
                  ),
            
                   ElevatedButton(onPressed: (){
                  setState(() {
                    num2--;
                  });
                 },
                  // ignore: sort_child_properties_last
                  child:const  Icon(
                    Icons.remove,
                    size: 20,
                    color: Colors.black,
                  ) ,
            
                   style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(255, 103, 173, 229),
                    shadowColor: Colors.black,
                    elevation: 6,
                   ),
                 ),
                   const SizedBox(
                    height: 50,
                    
                   ),
                  
                ],
                
            
                ),
                
                
                
                ],
                ),
                

                
        ),
      );
  
  }
}