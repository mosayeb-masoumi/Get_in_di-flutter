
import 'package:get_it/get_it.dart';
import 'package:get_it_locator_project/domain/home_controller.dart';
import 'package:get_it_locator_project/repository/home_repository.dart';
final locator = GetIt.instance;

void setUp(){
  
  locator.registerLazySingleton<HomeRepository>(() => HomeRepository());
  locator.registerLazySingleton<HomeController>(() => HomeController());
}