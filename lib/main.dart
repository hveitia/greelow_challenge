import 'package:flutter/material.dart';
import 'package:greelow/app.dart';
import 'package:greelow/shared/configurations/iod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Ioc.setupIocDependency();
  runApp(const App());
}

