import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetutorial/authentication/Otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneHome extends StatefulWidget {
  const PhoneHome({super.key});

  @override
  State<PhoneHome> createState() => _PhoneHomeState();
}

class _PhoneHomeState extends State<PhoneHome> {
  TextEditingController phonenumbercontroller = TextEditingController();

  /* sendcode() async{
    try{
     await FirebaseAuth.instance.verifyPhoneNumber(
       phoneNumber: '+91'+phonenumbercontroller.text,
         verificationCompleted: (PhoneAuthCredential credential) {
         },
         verificationFailed: (FirebaseAuthException e){
         Get.snackbar('Error Occured', e.code);
         },
         codeSent: (String vid, int? token){
          Get.to(OtpPage(vid: vid),);
         },
         codeAutoRetrievalTimeout: (vid){});
    }on FirebaseAuthException catch (e){
      Get.snackbar('Error Occured', e.code);
    }catch(e){
      Get.snackbar('Error Occured', e.toString());
    }
  }
*/
  sendcode()async{
    try{
      await FirebaseAuth.instance.verifyPhoneNumber(
          verificationCompleted: (PhoneAuthCredential credential){

          },
          verificationFailed: (FirebaseAuthException ex){
            Get.snackbar('Error Occured', ex.code);
          },
          codeSent: (String verificationid, int? resendtoken ){
            Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(verificationid: verificationid,),));
          },
          codeAutoRetrievalTimeout: (String verificationId ){
    }
      );
    }on FirebaseAuthException catch(e){
      Get.snackbar('Error Occured', e.code);
    }catch(e){
      Get.snackbar('Error Occured', e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Phone Auth"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: phonenumbercontroller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: "Enter Your PhoneNumber",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {
              sendcode();
            },
            /*onPressed: () async{
              try{
                await FirebaseAuth.instance.verifyPhoneNumber(
                  verificationCompleted: (PhoneAuthCredential credential){
                  },
                  verificationFailed: (FirebaseAuthException ex){
                    Get.snackbar('Error Occured', ex.code);
                  },
                  codeSent: (String verificationid, int? resendtoken ){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(verificationid: verificationid,),));
                  },
                  codeAutoRetrievalTimeout: (String verificationId){
                  },
                  phoneNumber: phonenumbercontroller.text.toString(),
                );
              }on FirebaseAuthException catch (e){
                Get.snackbar('Error Occured', e.code);
              }catch(e){
                Get.snackbar('Error Occured', e.toString());
              }
            },*/
             /* onPressed: ()async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                    verificationCompleted: (PhoneAuthCredential credential){
                    },
                    verificationFailed: (FirebaseAuthException ex){
                      Get.snackbar('Error Occured', ex.code);
                    },
                    codeSent: (String verificationid, int? resendtoken ){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(verificationid: verificationid,),));
                    },
                    codeAutoRetrievalTimeout: (String verificationId){
                    },
                  phoneNumber: phonenumbercontroller.text.toString(),
                );
              },*/
              child: Text("Recieve OTP"),
          ),
        ],
      ),
      /*  body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Text("Your Phone!",style: TextStyle(fontSize: 30,color: Colors.black),),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 6),
            child: Text("We will send  you an one time password on this  moblie number "),
          ),
          SizedBox(height: 20,),
          phonetext(),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () {
                    sendcode();
              },
              child: Text("Recieve OTP"))
        ],
      ), */
    );
  }
   /* Widget phonetext(){
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        controller: phonenumbercontroller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefix: Text("+91"),
          prefixIcon: Icon(Icons.phone),
          labelText: "Enter Your PhoneNumber",
          hintStyle: TextStyle(color: Colors.grey),
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          )
        ),
      ),
    );
   } */
}
/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetutorial/authentication/Otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneHome extends StatefulWidget {
  const PhoneHome({super.key});

  @override
  State<PhoneHome> createState() => _PhoneHomeState();
}
class _PhoneHomeState extends State<PhoneHome> {
  TextEditingController phonenumbercontroller = TextEditingController();
  sendcode() async{
    try{
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '91'+phonenumbercontroller.text,
        verificationCompleted: (PhoneAuthCredential credential) {
        },
        verificationFailed: (FirebaseAuthException e ){
          Get.snackbar('Error Occured', e.code);
        },
        codeSent: (String vid, int? token){
          Get.to(OtpPage(vid: vid),);
        },
        codeAutoRetrievalTimeout: (vid){},);
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error Occured', e.code);
    } catch (e) {
      Get.snackbar('Error Occured', e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Text("Your Phone!",style: TextStyle(fontSize: 30,color: Colors.black),),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 6),
            child: Text("We Will send you an one time password on this moblie number"),
          ),
          SizedBox(height: 20,),
          phonetext(),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              sendcode();
            },
            child: Text("Recieve OTP"),
          ),
        ],
      ),
    );
  }
  Widget phonetext(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        controller: phonenumbercontroller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefix: Text("+91"),
          prefixIcon: Icon(Icons.phone),
          labelText: "Enter your Phonenumber",
          hintStyle: TextStyle(color: Colors.grey),
          labelStyle:  TextStyle(color: Colors.grey),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
*/
