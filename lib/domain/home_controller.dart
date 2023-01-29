import 'package:get_it_locator_project/domain/models/home_model/home_model.dart';
import 'package:get_it_locator_project/locator.dart';
import 'package:get_it_locator_project/repository/home_repository.dart';

class HomeController {

 Future<dynamic> getNextItem() async {
      return locator.get<HomeRepository>().getHomeData();
  }
}
