// ignore_for_file: unused_element, unnecessary_cast


class GetStandardSiteConfigCors {
  /// A list of origins which should be able to make cross-origin calls.
  final List<String> allowedOrigins;
  /// Are credentials supported?
  final bool supportCredentials;

  /// Creates a new [GetStandardSiteConfigCors].
  /// [allowedOrigins] A list of origins which should be able to make cross-origin calls.
  /// [supportCredentials] Are credentials supported?
  GetStandardSiteConfigCors({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetStandardSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return GetStandardSiteConfigCors(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] as bool,
    );
  }
}

