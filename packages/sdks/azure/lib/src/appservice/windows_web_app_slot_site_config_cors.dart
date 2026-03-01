// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotSiteConfigCors {
  /// Specifies a list of origins that should be allowed to make cross-origin calls.
  final List<String>? allowedOrigins;
  /// Whether CORS requests with credentials are allowed. Defaults to `false`
  final bool? supportCredentials;

  /// Creates a new [WindowsWebAppSlotSiteConfigCors].
  /// [allowedOrigins] Specifies a list of origins that should be allowed to make cross-origin calls.
  /// [supportCredentials] Whether CORS requests with credentials are allowed. Defaults to `false`
  WindowsWebAppSlotSiteConfigCors({
    this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory WindowsWebAppSlotSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigCors(
      allowedOrigins: map['allowedOrigins'] == null ? null : (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] == null ? null : map['supportCredentials'] as bool,
    );
  }
}

