class AppConstance{
  static const String baseUrl="https://api.themoviedb.org/3";
  static const String apiKey="59725b4bcad528a8a19b3d6338e13336";
  static const String nowPlayingMoviesPath="$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath="$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath="$baseUrl/movie/top_rated?api_key=$apiKey";
  static  String movieDetailPath(int movieId)=>"$baseUrl/movie/$movieId?api_key=$apiKey";
  static  String recommendationPath(int movieId)=>"$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";
  static const String baseImageUrl="https://image.tmdb.org/t/p/w500";
static String imageUrl(String path){
  return '$baseImageUrl$path';
}
}