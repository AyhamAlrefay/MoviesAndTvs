import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/core/base_usecase/base_usecase.dart';
import 'package:untitled1/core/error/failure.dart';
import 'package:untitled1/movies/domain/entities/movie_detail.dart';
import 'package:untitled1/movies/domain/repository/movie_repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetail,MovieDetailsParameters> {
  MovieRepository repository;

  GetMovieDetailsUseCase(this.repository);

  @override
  Future<Either<Failure, MovieDetail>> call(MovieDetailsParameters parameters) async {
    return await repository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable{
  final int movieId;
  const MovieDetailsParameters({required this.movieId});

  @override
  // TODO: implement props
  List<Object?> get props => [movieId];

}