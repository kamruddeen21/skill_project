import 'package:flutter/material.dart';
import 'package:skill_project/sceen/homescreen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Screen'),
      ),
    
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
        
          children:  [
             Center(),
             Text('Welcome App',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            
            const SizedBox(height: 170,),
            Padding(
              padding:  const EdgeInsets.only(left: 35,right: 35),
              child: Column(
                children:  [
               TextFormField(
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:  BorderSide(
        color: Colors.black,
      ),
    ),
    prefixIcon:  Icon(Icons.email_outlined),
    hintText: 'Email',
  ),
),



                SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                
                decoration: InputDecoration(
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      color: Colors.black,
                    )
                  ),
                  prefixIcon: Icon(Icons.password_outlined),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
   onPressed: () { 
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return HomeScreen();
    }));
    },
   child:const Text(
    'Login',),
    style:   TextButton.styleFrom(
minimumSize: const Size(100, 50)
    ),
   
   ),
            
                ],
              ),
            )
            
                      ],
        ),
      ),
        

    );
  }
}