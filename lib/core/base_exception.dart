class BaseException implements Exception {
  final String message;
  BaseException({
    required this.message,
    dynamic stackTrace,
  }) {}
  void call() => toString();
  @override
  String toString() {
    return message;
  }
}

class UnknowException extends BaseException {
  UnknowException({
    super.message = 'Ocurrio un error insesperado',
  });
}
