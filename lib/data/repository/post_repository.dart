
import 'package:dio/dio.dart';
import 'package:my_post_app/data/models/post_model.dart';
import 'package:my_post_app/data/repository/api/api.dart';

class PostRepository {
  API api = API();

  Future<List<PostModel>> fetchPosts() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      // converting JSON response to Model type [List of PostModel]
      return postMaps.map((postMap) => PostModel.fromJson(postMap)).toList();
    } catch (ex) {
      rethrow;
    }
  }
}
