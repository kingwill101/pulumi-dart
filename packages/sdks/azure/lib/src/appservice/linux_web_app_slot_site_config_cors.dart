// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotSiteConfigCors {
  /// Specifies a list of origins that should be allowed to make cross-origin calls.
  final pulumi.Input<List<String>>? allowedOrigins;

  /// Whether CORS requests with credentials are allowed. Defaults to `false`
  final pulumi.Input<bool>? supportCredentials;

  /// Creates a new [LinuxWebAppSlotSiteConfigCors].
  /// [allowedOrigins] Specifies a list of origins that should be allowed to make cross-origin calls.
  /// [supportCredentials] Whether CORS requests with credentials are allowed. Defaults to `false`
  LinuxWebAppSlotSiteConfigCors({this.allowedOrigins, this.supportCredentials});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory LinuxWebAppSlotSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteConfigCors(
      allowedOrigins: (() {
        final guardedValue = map['allowedOrigins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      supportCredentials: (() {
        final guardedValue = map['supportCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
