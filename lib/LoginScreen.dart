import 'package:flutter/material.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super .key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
       // height: 1500,
        child:Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left:-100,
              top:-30,
              child: Container(

                width: 475,
                height: 475,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.purple.shade200, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),

            //Title
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 300),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Login",
                        style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold, ),
                  )
                ],
            )
            ),

            //switch screen

            Padding(padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 365),
                  child: Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 17, ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_)=> const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      "  sign up",
                    style: TextStyle(color:Colors.purple,fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  )
                ],
              ),
            ),

            //first field

           Padding(padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 420),
             child: TextField(
               decoration: InputDecoration(
                 prefixText: "+91",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                 ),
                 labelText: "Phone number",
               ),
             ) ,
           ),

            //second field

            Padding(padding: const EdgeInsets.only(left: 40, top: 500, right:40),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:Icon( Icons.lock) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Password",

                  suffix: GestureDetector(
                    onTap: () {
                      //empty for now
                    },
                    child: const Text(
                      "Forgot",
                      style: TextStyle(color: Colors.purple, fontSize: 17, fontWeight: FontWeight.bold),
                    ),

                  )
                ),
              ) ,
            ),

            //button
            Padding(
              padding: const EdgeInsets.only(top: 600, left:250) ,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: (){},

                  label: const Text("Login",
                      style: TextStyle(color:Colors.white, fontSize: 20)),
                  icon: const Icon(Icons.login, color: Colors.white, size: 25,),
              ),
            ),

            //socials
           Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 30, ),
               padding:const EdgeInsets.only(top:825, left:30, right: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   Icon(Icons.apple, size:40),
                   SizedBox(width: 20,),
                   Icon(Icons.facebook, size:40, color:Colors.blue),
                   SizedBox(width: 10,),
                   Icon(Icons.g_mobiledata_rounded, size:50, color: Colors.red,),
                   SizedBox(width: 10,),
                   Icon(Icons.email, size:35, )
                 ],
               ),
           )
          ],
        ),
        ),
      ),
    );
  }


}