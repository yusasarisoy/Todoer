import 'package:flutter/material.dart';
import 'package:todoer/models/task_data.dart';
import './screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
        theme: ThemeData(
          unselectedWidgetColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
