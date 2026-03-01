// ignore_for_file: unused_element, unnecessary_cast


class AppSpecFunctionLogDestinationLogtail {
  /// Logtail token.
  final String token;

  /// Creates a new [AppSpecFunctionLogDestinationLogtail].
  /// [token] Logtail token.
  AppSpecFunctionLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory AppSpecFunctionLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionLogDestinationLogtail(
      token: map['token'] as String,
    );
  }
}

