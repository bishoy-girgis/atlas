import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Core/config/my_theme.dart';
import 'Core/config/page_route_name.dart';
import 'Core/config/routes.dart';
import 'Core/services/bloc_observer.dart';
import 'Core/services/cache_helper.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await SharedPref.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        builder: EasyLoading.init(),
        navigatorKey: navigatorKey,
        initialRoute: PageRouteName.initial,
        onGenerateRoute: Routes.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Atlas',
        theme: appTheme,
      ),
    );
  }
}
