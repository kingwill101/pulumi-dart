// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppSiteConfigCor {
  /// A `allowed_origins` block as defined above.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Whether CORS requests with credentials are allowed.
  final pulumi.Input<bool> supportCredentials;

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
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      supportCredentials: pulumi.Input.fromValue(map['supportCredentials'] as bool),
    );
  }
}

