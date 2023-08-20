import 'package:get/get.dart';
import 'views/home/home_view.dart';
import 'views/settings/settings_view.dart';
import 'views/about/about_view.dart';
import 'views/heart/heart_view.dart';
import 'views/train/train_view.dart';
import 'views/water/water_view.dart';
import 'views/sleep/sleep_view.dart';
import 'views/stats/stats_view.dart';

final routes = [
  GetPage(name: '/', page: () => HomeView()),
  GetPage(name: '/settings', page: () => SettingsView()),
  GetPage(name: '/notifications', page: () => SettingsView()),
  GetPage(name: '/about', page: () => AboutView()),
  GetPage(name: '/heart', page: () => HeartView()),
  GetPage(name: '/train', page: () => TrainView()),
  GetPage(name: '/water', page: () => WaterView()),
  GetPage(name: '/Sleep', page: () => SleepView()),
  GetPage(name: '/stats', page: () => StatsView()),
];
