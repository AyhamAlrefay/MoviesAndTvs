import 'package:get_it/get_it.dart';
import 'package:untitled1/movies/data/datasource/movie_remote_data_source.dart';
import 'package:untitled1/movies/data/repository/movie_repository_impl.dart';
import 'package:untitled1/movies/domain/repository/movie_repository.dart';
import 'package:untitled1/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:untitled1/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:untitled1/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:untitled1/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:untitled1/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:untitled1/movies/presentation/controller/movie_detail_bloc.dart';
import 'package:untitled1/movies/presentation/controller/movies_bloc.dart';

GetIt sl = GetIt.instance;

class ServiceLocator {
  void init() {
    /// BLOC
    sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
    sl.registerFactory(() => MovieDetailBloc(sl(),sl()));

    /// USE CASE
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));


    /// REPOSITORY
    sl.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<MovieRemoteDataSource>(
        () => MovieRemoteDataSourceImpl());
  }
}
