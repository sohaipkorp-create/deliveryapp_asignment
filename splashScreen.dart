// ignore: file_names
import 'package:flutter/material.dart';
import 'home_screen.dart';


class SplashScreen extends StatelessWidget 
{
  const SplashScreen({super.key});
 
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body:Center
      ( 
        child:  Column
         (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Image.asset('assets/solar_heart-bold.png'),
            Image.asset('assets/Vector.png'),
            const SizedBox(height: 30,),
            ElevatedButton
            (
              style: ElevatedButton.styleFrom
               (
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                
               ),
               onPressed:()
               { 
                Navigator.pushReplacement
                (
                  context,MaterialPageRoute(builder: (context)=>const HomeScreen())
                );
                },
               child: Text
               (
                'Start',style: TextStyle(fontSize: 20,
                color: Colors.white,fontWeight: FontWeight.bold),
               )
            )
          ] 
         ) 
      )
    );

  }
}
