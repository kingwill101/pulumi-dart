// ignore_for_file: unused_element, unnecessary_cast


class StandardSiteConfigCors {
  /// A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  final List<String>? allowedOrigins;
  /// Are credentials supported?
  final bool? supportCredentials;

  /// Creates a new [StandardSiteConfigCors].
  /// [allowedOrigins] A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  /// [supportCredentials] Are credentials supported?
  StandardSiteConfigCors({
    this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory StandardSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return StandardSiteConfigCors(
      allowedOrigins: map['allowedOrigins'] == null ? null : (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] == null ? null : map['supportCredentials'] as bool,
    );
  }
}

