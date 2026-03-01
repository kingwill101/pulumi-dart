// ignore_for_file: unused_element, unnecessary_cast


class GetFunctionAppSiteConfigCors {
  final List<String> allowedOrigins;
  final bool? supportCredentials;

  /// Creates a new [GetFunctionAppSiteConfigCors].
  /// [allowedOrigins] Required.
  /// [supportCredentials] Optional.
  GetFunctionAppSiteConfigCors({
    required this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory GetFunctionAppSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppSiteConfigCors(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] == null ? null : map['supportCredentials'] as bool,
    );
  }
}

