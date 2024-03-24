import 'package:vi_book/domain/entities/actor.dart';
import 'package:vi_book/domain/entities/movie.dart';
import 'package:vi_book/domain/entities/movie_detail.dart';
import 'package:vi_book/domain/entities/result.dart';

abstract interface class MovieRepository {
  Future<Result<List<Movie>>> getNowPlaying({int page = 1});
  Future<Result<List<Movie>>> getUpComing({int page = 1});
  Future<Result<MovieDetail>> getDetail({required int id});
  Future<Result<List<Actor>>> getActor({required int id});
}
