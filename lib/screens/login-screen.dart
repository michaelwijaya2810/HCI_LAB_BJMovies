import 'package:flutter/material.dart';
import '../pallete.dart';

String contentuser;

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  Widget _buildUsernameField(){
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
          child: TextFormField(
                   decoration: InputDecoration(
                   border: InputBorder.none,
                   prefixIcon: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                   hintText: "Username",
                   hintStyle: kBodyText,
                    ),
                   validator: (value){
                     if(value.isEmpty){
                       return 'Username must be filled';
                     }
                     else if(value.length < 5){
                       return 'Username min length must be 5';
                     }
                     else if(value.length >= 20){
                       return 'Username max length must be 20';
                     }
                     else if(value.contains(" ")){
                       return 'Username must not contain Space';
                     }
                     else{
                       return null;
                     }
                   }, 
                   style: kBodyText,
                   keyboardType: TextInputType.name,
                   textInputAction: TextInputAction.next,
           ),
         );
  }

   Widget _buildPasswordField(){
  Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
              ),
              hintText: "Password",
              hintStyle: kBodyText,
            ),
           obscureText: true,
            validator: (value){
                 if(value.isEmpty){
                    return 'Password must be filled';
                  }
                  else{
                    return null;
                  }
            },
            style: kBodyText,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
          ),
        );
  }

   Widget _buildLoginButton(){
     Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.05,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kBlue,
      ),
     child: FlatButton(
        onPressed: () {
          if(!_formkey.currentState.validate()){
             return;
          }
          else{
            // Navigator.push(context, MaterialPageRoute(builder; (context) => Home(username: value),
            Navigator.pushNamed(context, 'AboutUs');
         }
        },
        child: Text(
          "Login",
          style: kBodyText2.copyWith(fontWeight: FontWeight.bold),
        ),
      ));
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffcc),
      body: Builder(builder: (context){
        return Container(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Flexible(
                child: Center(
                child: Image(image: AssetImage('assets/images/logo2.png'))    
                ),
              ),
              Column(
              children: <Widget>[
                _buildUsernameField(),
                SizedBox(
                    height: 25,
                  ),
                _buildPasswordField(),
                SizedBox(
                    height: 35,
                  ),
                _buildLoginButton(),
                SizedBox(
                    height: 80,
                  ),
              ]
              )
              ]
            ),
          )
        );
      })
    );
  }
}
  // Widget build(BuildContext context) {
  //   return Stack(
  //     children: [
  //       Scaffold(
  //         backgroundColor: Color(0xffffffcc),
  //         body: Column(
  //           children: [
  //             Flexible(
  //               child: Center(
  //               child: Image(image: AssetImage('assets/images/logo2.png'))    
  //               ),
  //             ),
        
  //             Column(
  //               children: [
  //                 TextInputField(
  //                   content: contentuser,
  //                 ),
  //                 PasswordInput(
  //                  content: contentPass,
  //                 ),
  //                 SizedBox(
  //                   height: 25,
  //                 ),
  //                 RoundedButton(
  //                   contentUser: contentuser,
  //                 ),
  //                 SizedBox(
  //                   height: 35,
  //                 ),
  //               ],
  //             ),
  //             SizedBox(
  //               height: 40,
  //             ),
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }

