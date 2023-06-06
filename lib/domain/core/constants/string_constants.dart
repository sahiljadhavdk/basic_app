import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppConstants {
  static String appName = 'Whatsapp';
  static String ok = 'Ok';
  static String cancel = 'Cancel';
  static String hashTag = '#';
  static String shareMessage = 'Hello Join us on Whatsapp ';
  static String shareGeneralMessage = 'Hello Join us on Whatsapp ';
  static showToast(String message,
          {Color? backgroundColor,
          Color? textColor,
          double? textFontSize,
          ToastGravity? toastGravity}) =>
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        webPosition: 'center',
        gravity: toastGravity ?? ToastGravity.CENTER,
        backgroundColor: backgroundColor ?? Colors.red,
        textColor: textColor ?? Colors.white,
        fontSize: textFontSize ?? 14,
      );
}

class OnboardConstants {
  static const welcome = 'Welcome To WhatsApp';
  static const readOur = 'Read Our';
  static const privacyPolicy = 'Privacy Policy';
  static const tapAndContinue = 'Tap Agree and Continue to accept the';
  static const termsAndConditions = 'Terms and Conditions';
  static const agreeAndContinue = 'Agree and Continue';
  static const from = 'from';
  static const developer = 'Sahil 🧑🏻‍💻';
}

class AuthConstants {
  static const enterNumber = 'Enter your Phone number';
  static const whatsappWillSend =
      'Whatsapp will send an OTP Message to verify your phone number';
  static const mobileNumber = 'Mobile Number';
  static const next = 'Next';
  static const youMustBe = 'You must be at least';
  static const yearsOld = '16 years old';
  static const toRegister = 'to register. Learn how WhatsApp works with the';
  static const companies = 'Sahil Companies';
  static const resend = 'Resend';
  static const notReceived = 'Not received?';
  static const verifyNumber = 'Verify Phone Number';
  static const otpSend = 'OTP message sent on';
  static const successfully = 'successfully';
  static const verify = 'verify';
  static const letUsKnow = 'Let Us Know You';
  static const enterDetails = 'Enter some details about you';
  static const name = 'Full Name';
  static const username = 'Username';
  static const status = 'Status';
  static const submit = 'Submit';
  static String otpSentSuccess = 'OTP sent successfully !';
}

class ErrorConstants {
  static const genericError = 'Something went wrong, Please try again!';
  static String unexpectedForMobileNumberError =
      'OTP Request Failed, Please try again';
  static String failedToLogin = 'Failed to verify phone number!';
  static String failedToUpload = 'Failed to upload, Please try again!';
  static String failedToUpdate = 'Failed to update, Please try again!';
  static String invalidMobileNumberError = 'Invalid Phone Number';
  static String otpSessionExpired =
      'OTP verification code has expired please click on resend';
  static String invalidOTP = 'invalid OTP';
  static String invalidMobileNo = 'invalid mobile number';
  static String requiredField = 'Required';
  static String failedTOCreateAccount =
      'Failed to create account, Please try again!';
  static String usernameExist = 'Username already taken!';
}

class GarageScreenConstants {
  static String locationDisable = 'Your location service is disabled';
}

class ContactScreenConstants {
  static String allContacts = 'All Contacts';
  static String requestContactPermission =
      'Allow contact access to see what others are liking and reading on myBibla.';
  static String inviteFriend = 'Invite Friends on Whatsapp';
  static String invite = 'invite';
  static String provideAccess = 'Provide Access';
  static String pleaseWaitWeAreSyncing =
      'Please wait, contacts are getting sync';
}

class HomeScreenConstants {
  static String chats = 'Chats';
  static String groups = 'Groups';
  static String status = 'Status';
}
