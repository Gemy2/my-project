import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var EmailControler = TextEditingController();
  var PaswwordControler = TextEditingController();

  // const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child:
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Login" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0),),
                  TextFormField(
                    controller: EmailControler,
                    onFieldSubmitted: (value){print(value);},
                    onChanged: (value){print(value);},
                    keyboardType: TextInputType.emailAddress,
                    decoration:InputDecoration(
                      labelText: "Emaill Adress",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)
                    ) ,
                  ),
                  SizedBox(height: 15.0,),
                  TextFormField(
                    controller: PaswwordControler,
                    onFieldSubmitted: (value){print(value);},
                    onChanged: (value){print(value);},
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration:InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon:Icon(Icons.remove_red_eye),

                    ) ,
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    color: Colors.blue,
                    width: double.infinity,
                    child: MaterialButton(onPressed: (){

                    } ,
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Row(
                    children: [
                      Text("don\'t have an acounet"),
                      TextButton(onPressed: (){}, child: Text("Register Now"))
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
