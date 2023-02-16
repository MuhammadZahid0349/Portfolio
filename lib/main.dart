import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:portfolio/provider/theme.dart';
import 'package:portfolio/routes/routes.dart';

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Consumer(
            builder: (context, ref, _) {
              return ThemeProvider(
                initTheme: ref.watch(themeProvider).isDarkMode
                    ? MyThemes.darkTheme
                    : MyThemes.lightTheme,
                child: GetMaterialApp(
                  title: "Wind-Tech-Solutions",
                  debugShowCheckedModeBanner: false,
                  themeMode: ref.watch(themeProvider).themeMode,
                  theme: MyThemes.lightTheme,
                  darkTheme: MyThemes.darkTheme,
                  initialRoute: Routes.initial,
                  onGenerateRoute: RouterGenerator.generateRoute,
                ),
              );
            },
          );
        });
  }
}
