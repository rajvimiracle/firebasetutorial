// /*
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import 'HomeScreen.dart';
//
// class LoginScreen extends StatelessWidget {
//   final _phoneController = TextEditingController();
//   final _passController = TextEditingController();
//  Future registerUser(String mobile, BuildContext context) async {
//    FirebaseAuth _auth = FirebaseAuth.instance;
//    _auth.verifyPhoneNumber(
//        phoneNumber: mobile,
//        timeout: Duration(seconds: 60),
//        verificationCompleted: (AuthCredential authCredential) {
//          PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: smsCode);
//         _auth.signInWithCredential(_credential).then((AuthResult result){
//          Navigator.pushReplacement(context, MaterialPageRoute(
//              builder: (context) => HomeScreen(result.user)
//          ));
//        })
//    .catchError((e) {
//      print(e);
//    });
//  },
//     verificationFailed: (AuthException authException) {
//       print(authException.message);
//     },
//      codeSent: (String verificationId, int? forceResendingToken) {
//        showDialog(
//            context: context,
//            barrierDismissible: false,
//            builder: (context) => AlertDialog(
//              title: Text("Enter SMS Code"),
//              content: Column(
//                mainAxisSize: MainAxisSize.min,
//                children: <Widget>[
//                  TextField(
//                    controller: _codeController,
//                  ),
//
//                ],
//              ),
//              actions: <Widget>[
//                ElevatedButton(
//                  child: Text("Done",style: TextStyle(color: Colors.white),),
//
//                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(
//                Colors.red,
//                )),
//                  onPressed: () {
//                    FirebaseAuth auth = FirebaseAuth.instance;
//
//                     smsCode = _codeController.text.trim();
//
//                    _credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: smsCode);
//                    auth.signInWithCredential(_credential).then((AuthResult result){
//                      Navigator.pushReplacement(context, MaterialPageRoute(
//                          builder: (context) => HomeScreen(result.user)
//                      ));
//                    }).catchError((e){
//                      print(e);
//                    });
//                  },
//                )
//              ],
//            )
//        );
//
//      },
//        codeAutoRetrievalTimeout: (String verificationId){
//      verificationId = verificationId;
//      print(verificationId);
//      print("Timout");
//    },
//
//
//   );
//
//  }
//  Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           padding: EdgeInsets.all(32),
//           child: Form(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text("Login", style: TextStyle(color: Colors.lightBlue, fontSize: 36, fontWeight: FontWeight.w500),),
//
//                 SizedBox(height: 16,),
//
//                 TextFormField(
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           borderSide: BorderSide(color: Colors.grey)
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           borderSide: BorderSide(color: Colors.grey)
//                       ),
//                       filled: true,
//                       fillColor: Colors.grey[100],
//                       hintText: "Phone Number"
//
//                   ),
//                   controller: _phoneController,
//                 ),
//
//                 SizedBox(height: 16,),
//
//                 TextFormField(
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           borderSide: BorderSide(color: Colors.grey)
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           borderSide: BorderSide(color: Colors.grey)
//                       ),
//                       filled: true,
//                       fillColor: Colors.grey[100],
//                       hintText: "Password"
//
//                   ),
//
//                   controller: _passController,
//                 ),
//
//                 SizedBox(height: 16,),
//
//                 Container(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     child: Text("Login"),
//
//
//                     onPressed: (){
//                       //code for sign in
//                       Container(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           child: Text("Login",style: TextStyle(color: Colors.white),),
//
//                           onPressed: (){
//                             //code for sign in
//                             final mobile = _phoneController.text.trim();
//                             registerUser(mobile, context);
//                           },
//
//                         ),
//                       );
//                     },
//
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
// */
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
