import 'package:flutter/material.dart';
import 'package:skill_project/sceen/homescreen.dart';
class LoginScreen extends StatefulWidget {

   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Screen'),
      ),
    
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
        
          children:  [
             const Center(),
             const Text('Welcome App',style: TextStyle(
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
      borderSide:  const BorderSide(
        color: Colors.black,
      ),
    ),
    prefixIcon:  const Icon(Icons.email_outlined),
    hintText: 'Email',
  ),
),

                const SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                
                decoration: InputDecoration(
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  const BorderSide(
                      color: Colors.black,
                    )
                  ),
                  prefixIcon: const Icon(Icons.password_outlined),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 20,),

              InkWell(
                onTap: () async{
          setState((){
            changeButton = true;
          });
          await Future.delayed(const Duration(seconds: 1));
                  Navigator.push(context, MaterialPageRoute(builder: (context){
    return const HomeScreen();
   }));
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height:50 ,width: changeButton? 50 :150,
                 alignment: Alignment.center,
                  decoration: BoxDecoration(
                     color: Colors.red,
                    borderRadius: BorderRadius.circular(changeButton?50:10)
                  ),
                  
                  child:changeButton?Icon(Icons.done,color: Colors.white,) : Text('Login',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              )
   //           ElevatedButton(
  // onPressed: () { 
   // Navigator.push(context, MaterialPageRoute(builder: (context){
     // return const HomeScreen();
   // }));
   // },
    // child:const Text(
    // 'Login',),
   // style:   TextButton.styleFrom(
// minimumSize: const Size(100, 50)
  //  ),
   
//   ),
            
                ],
              ),
            )
            
                      ],
        ),
      ),
        

    );
  }

}

