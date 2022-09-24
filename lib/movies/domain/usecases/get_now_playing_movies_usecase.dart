import 'package:dartz/dartz.dart';
import 'package:untitled1/core/base_usecase/base_usecase.dart';
import 'package:untitled1/movies/domain/entities/movie.dart';
import 'package:untitled1/movies/domain/repository/movie_repository.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie>,NoParameters>{
MovieRepository repository;
GetNowPlayingMoviesUseCase(this.repository);

@override
  Future<Either<Failure,List<Movie>>> call(NoParameters parameters)async {
  return await repository.getNowPlayingMovies();
}
}