import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_post_app/data/models/post_model.dart';
import 'package:my_post_app/data/repository/post_repository.dart';
import 'package:my_post_app/logic/cubits/post_cubit/post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostLoadingState()) {
    fetchPosts();
  }

  PostRepository postRepository = PostRepository();

  void fetchPosts() async {
    try {
      List<PostModel> posts = await postRepository.fetchPosts();
      emit(PostLoadedState(posts));
    } on DioException catch (ex) {
      if (ex.type == DioExceptionType.connectionError) {
        emit(PostErrorState("Please check your internet connection."));
      } else if (ex.type == DioExceptionType.unknown) {
        {
          emit(PostErrorState("Unknown error occurred."));
        }
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        {
          emit(PostErrorState("Connection timeout occurred"));
        }
      } else {
        emit(PostErrorState(ex.type.toString()));
      }
    }
  }
}