// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppSiteConfigCor {
  /// A `allowed_origins` block as defined above.
  final List<String> allowedOrigins;
  /// Whether CORS requests with credentials are allowed.
  final bool supportCredentials;

  /// Creates a new [GetWindowsWebAppSiteConfigCor].
  /// [allowedOrigins] A `allowed_origins` block as defined above.
  /// [supportCredentials] Whether CORS requests with credentials are allowed.
  GetWindowsWebAppSiteConfigCor({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetWindowsWebAppSiteConfigCor.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigCor(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] as bool,
    );
  }
}

