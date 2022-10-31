
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Utils/Routes.dart';

 class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool chnageButton = false;
  final _forkey = GlobalKey<FormState>();

      moveToHome(BuildContext context) async{
             setState(() {
              chnageButton = true;
             });

         await Future.delayed(Duration(seconds: 1));
         await Navigator.pushNamed(context, Myroutes.HomeRoute);

         setState(() {
            chnageButton = false;
         });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor, 
      
      child: SingleChildScrollView(
        child: Form(
          key: _forkey,
          child: Column(
            children: [
              Image.asset(
                "images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "UserName",
                        labelText: "Username",
                      ), 
                      
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }, 
                      
                    ), 
                    
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "EnterPassworld",
                        labelText: "Passworld",
                      ), 
                      
                    ), 
                    
                    SizedBox(
                      height: 40.0,
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, Myroutes.HomeRoute);
                    //   },
                    // ),
                    Material(
                      color: context.theme.buttonColor,
                      borderRadius:
                          BorderRadius.circular(chnageButton ? 20 : 9),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: chnageButton ? 50 : 100,
                          height: 50,
                          child: chnageButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
