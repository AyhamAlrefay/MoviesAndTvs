import 'package:untitled1/core/network/error_messsage_model.dart';

class ServerException implements Exception{
 final ErrorMessageModel errorMessageModel;

 const ServerException({required this.errorMessageModel});

}