// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceLogDestinationLogtail {
  /// Logtail token.
  final String token;

  /// Creates a new [AppSpecServiceLogDestinationLogtail].
  /// [token] Logtail token.
  AppSpecServiceLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory AppSpecServiceLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceLogDestinationLogtail(
      token: map['token'] as String,
    );
  }
}

