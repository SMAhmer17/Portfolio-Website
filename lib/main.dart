import 'package:ahmerportfolio/providers/theme_provider.dart';
import 'package:ahmerportfolio/theme/theme_prferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: ScreenUtilInit(
        designSize: Size(1280, 1920),
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',

            theme: getAppTheme(context, isDark: false),
            darkTheme: getAppTheme(context, isDark: true),
            debugShowCheckedModeBanner: false,
            themeMode: context.watch<ThemeProvider>().themeMode,
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  bool isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            CupertinoSwitch(
              value:
                  context
                      .watch<ThemeProvider>()
                      .isLightMode, // Watch for changes
              onChanged: (v) {
                // Directly toggle theme mode using the provider without setState
                context.read<ThemeProvider>().toggleThemeMode(isLightMode: v);
                print("Light Mode $v");
                print("Theme ${context.read<ThemeProvider>().themeMode}");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
