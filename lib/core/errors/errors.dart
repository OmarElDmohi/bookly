abstract class Failure{
  final ErrorMsg;

  Failure({required this.ErrorMsg});
}


class ServerFailure extends Failure{
  ServerFailure({required super.ErrorMsg});

}