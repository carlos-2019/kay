import 'package:flutter/material.dart';

import 'package:kay/src/pages/auth/forgotpassword/forgot_password.dart';
import 'package:kay/src/pages/auth/login/login.dart';
import 'package:kay/src/pages/auth/register/register.dart';

final routes = <String, WidgetBuilder>{
  'login': (BuildContext context) => Login(),
  'forgor-password': (BuildContext context) => ForgotPassword(),
  'register': (BuildContext context) => Register(),
};
