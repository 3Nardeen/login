import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ProfileScreen.dart';

void main(){
  return(runApp(MaterialApp(home: RunMyApp(),)));
}

class RunMyApp extends StatefulWidget {
  const RunMyApp({super.key});

  @override
  State<RunMyApp> createState() => login();
}
class login extends State<RunMyApp> {
  bool _passwordVisible=false;
  final _formKey = GlobalKey<FormState>();
  RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
//A function that validate user entered password
  bool validatePassword(String pass){
    String _password = pass.trim();
    if(pass_valid.hasMatch(_password)){
      return true;
    }else{
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Welcome back!",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign in to continue!",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,

                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white24,),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,),
                      Image.asset(
                        'assets/images/googlelogo.png', width: 40, height: 40,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Log in with Google",
                        style: TextStyle(color: Colors.black, fontSize: 20),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white24,),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,),
                      Image.asset('assets/images/Facebooklogo.png', width: 50,
                        height: 50,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Log in with Facebook",
                        style: TextStyle(color: Colors.black, fontSize: 20),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("or")
                    ],
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'User name',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(key: _formKey,child: TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter password";
                  }else{
                    //call function to check password
                    bool result = validatePassword(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return " Password should contain Capital, small letter & Number & Special";
                    }
                  }
                },
                obscureText: !_passwordVisible,
                obscuringCharacter: "*",
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration:
                InputDecoration(
                  fillColor:
                  Colors.white,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: (){
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });

                    },
                  ),
                ),

              ),),

              SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Log in",
                        style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,),
                  onPressed: () {
                    if(_formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return profile();
                          }
                          )
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Forget password", style: TextStyle(
                          color: Colors.blueAccent, fontSize: 20))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



