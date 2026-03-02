// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSiteConfigCors {
  /// Specifies a list of origins that should be allowed to make cross-origin calls.
  final pulumi.Input<List<String>>? allowedOrigins;
  /// Whether CORS requests with credentials are allowed. Defaults to `false`
  final pulumi.Input<bool>? supportCredentials;

  /// Creates a new [LinuxWebAppSiteConfigCors].
  /// [allowedOrigins] Specifies a list of origins that should be allowed to make cross-origin calls.
  /// [supportCredentials] Whether CORS requests with credentials are allowed. Defaults to `false`
  LinuxWebAppSiteConfigCors({
    this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory LinuxWebAppSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSiteConfigCors(
      allowedOrigins: map['allowedOrigins'] == null ? null : ((map['allowedOrigins'] as List).cast<String>()).input(),
      supportCredentials: map['supportCredentials'] == null ? null : (map['supportCredentials'] as bool).input(),
    );
  }
}

