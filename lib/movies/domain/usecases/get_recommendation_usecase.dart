import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/core/base_usecase/base_usecase.dart';
import 'package:untitled1/core/error/failure.dart';
import 'package:untitled1/movies/domain/entities/recommendation.dart';
import 'package:untitled1/movies/domain/repository/movie_repository.dart';

class GetRecommendationUseCase extends BaseUseCase<List<Recommendation>,MovieRecommendationParameters>{
  MovieRepository repository;
  GetRecommendationUseCase(this.repository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(MovieRecommendationParameters parameters)async {
return await repository.getRecommendation(parameters);
  }

}


class MovieRecommendationParameters extends Equatable{
  final int id;
  const MovieRecommendationParameters(this.id);

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}