// ignore_for_file: unused_element, unnecessary_cast


class AccountCors {
  /// A list of origins that should be allowed to make cross-origin calls.
  final List<String> allowedOrigins;

  /// Creates a new [AccountCors].
  /// [allowedOrigins] A list of origins that should be allowed to make cross-origin calls.
  AccountCors({
    required this.allowedOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
    };
  }

  factory AccountCors.fromMap(Map<String, dynamic> map) {
    return AccountCors(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
    );
  }
}

