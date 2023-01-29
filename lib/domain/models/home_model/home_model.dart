class HomeModel{

  int userId;
  int id;
  String title;
  bool completed;

  HomeModel(this.userId, this.id, this.title, this.completed);


  HomeModel.fromJson(Map<String, dynamic> json)
      : userId = json["userId"] ?? -1,
        id = json["message"] ?? -1,
        title = json["title"] ?? "",
        completed = json["completed"] ?? false;
}