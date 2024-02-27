 // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebasetutorial/authentication/Wrapper.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pinput/pinput.dart';
//
// class OtpPage extends StatefulWidget {
//   final String vid;
//   const OtpPage({super.key,required this.vid});
//
//   @override
//   State<OtpPage> createState() => _OtpPageState();
// }
//
// class _OtpPageState extends State<OtpPage> {
//   var code="";
//
//   signIn()async{
//
//     PhoneAuthCredential credential = PhoneAuthProvider.credential(
//         verificationId: widget.vid,
//         smsCode: code);
//     try{
//       await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
//         Get.offAll(Wrapper());
//       });
//     }on FirebaseAuthException catch(e){
//       Get.snackbar('Error Occured', e.code);
//     }catch(e){
//       Get.snackbar('Error Occured', e.toString());
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: SingleChildScrollView(
//         child: ListView(
//           shrinkWrap: true,
//           children: [
//             Center(
//               child: Text("OTP verification",style: TextStyle(fontSize: 30),),
//             ),
//             Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 6),
//               child: Text("Enter OTP sent to +91 9876543210",textAlign: TextAlign.center,),
//             ),
//             SizedBox(height: 20,),
//             textcode(),
//             SizedBox(height: 40,),
//             ElevatedButton(
//                 onPressed: () {
//                   // signIn();
//                 },
//                 child: Text("Verifiy & Proceed"),),
//
//           ],
//         ),
//       ),
//     );
//   }
//   Widget textcode(){
//     return Center(
//       child: Padding(
//         padding: EdgeInsets.all(6.0),
//         child: Pinput(
//           length: 6,
//           onChanged: (value){
//             setState(() {
//               code=value;
//             });
//           },
//
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasetutorial/authentication/Wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPScreen extends StatefulWidget {
  String verificationid;

  OTPScreen({super.key, required this.verificationid});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  SignIn()async{
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationid,
        smsCode: otpController.text.toString());

    try{
      await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
        Get.offAll(Wrapper());
      });
    } on FirebaseAuthException catch(e){
      Get.snackbar('Error Occured', e.code);
    }catch (e){
      Get.snackbar('Error Occured', e.toString());
    }

  }

  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: otpController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter the OTP",
                suffixIcon: Icon(Icons.phone),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              SignIn();
            },
            /*  onPressed: () async {
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: widget.verificationid,
                    smsCode: otpController.text.toString());
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(credential)
                      .then((value) {
                    *//*Get.offAll(Wrapper());*//*
                  });
                } on FirebaseAuthException catch (e) {
                  Get.snackbar('Error Occured', e.code);
                } catch (e) {
                  Get.snackbar('Error Occured', e.toString());
                }
              },*/
              /* onPressed: () async{
            try{
              PhoneAuthCredential credential = await PhoneAuthProvider.credential(
                  verificationId: widget.verificationid,
                  smsCode: otpController.text.toString());
              FirebaseAuth.instance.signInWithCredential(credential).then((value) {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
              });
            }catch(ex){
            }
          },*/
              child: Text("OTP"),),
        ],
      ),
    );
  }
}
