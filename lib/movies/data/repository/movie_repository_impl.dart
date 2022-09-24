import 'package:dartz/dartz.dart';
import 'package:untitled1/core/error/exceptions.dart';
import 'package:untitled1/core/error/failure.dart';
import 'package:untitled1/movies/data/datasource/movie_remote_data_source.dart';
import 'package:untitled1/movies/domain/entities/movie.dart';
import 'package:untitled1/movies/domain/entities/movie_detail.dart';
import 'package:untitled1/movies/domain/entities/recommendation.dart';
import 'package:untitled1/movies/domain/repository/movie_repository.dart';
import 'package:untitled1/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:untitled1/movies/domain/usecases/get_recommendation_usecase.dart';

class MovieRepositoryImpl implements MovieRepository{
  final MovieRemoteDataSource movieRemoteDataSource;

  MovieRepositoryImpl(this.movieRemoteDataSource);

  @override
  Future<Either<Failure,List<Movie>>> getNowPlayingMovies() async{
    final result= await movieRemoteDataSource.getNowPlayingMovies();
try{
  return Right(result);
}on ServerException catch(failure){
  return Left(ServerFailure(failure.errorMessageModel.statusMessage));
}
  }

  @override
  Future<Either<Failure,List<Movie>>> getPopularMovies() async{
    final result= await movieRemoteDataSource.getPopularMovies();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    } }

  @override
  Future<Either<Failure,List<Movie>>> getTopRatedMovies() async{
    final result= await movieRemoteDataSource.getTopRatedMovies();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetail>> getMovieDetails(MovieDetailsParameters parameters) async{
    final result= await movieRemoteDataSource.getMovieDetail(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendation(MovieRecommendationParameters parameters)async {
    final result= await movieRemoteDataSource.getRecommendation(parameters);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }




}