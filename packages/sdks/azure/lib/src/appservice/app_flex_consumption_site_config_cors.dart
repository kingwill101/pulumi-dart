// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppFlexConsumptionSiteConfigCors {
  /// Specifies a list of origins that should be allowed to make cross-origin calls.
  final pulumi.Input<List<String>>? allowedOrigins;
  /// Are credentials allowed in CORS requests? Defaults to `false`.
  final pulumi.Input<bool>? supportCredentials;

  /// Creates a new [AppFlexConsumptionSiteConfigCors].
  /// [allowedOrigins] Specifies a list of origins that should be allowed to make cross-origin calls.
  /// [supportCredentials] Are credentials allowed in CORS requests? Defaults to `false`.
  AppFlexConsumptionSiteConfigCors({
    this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory AppFlexConsumptionSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionSiteConfigCors(
      allowedOrigins: map['allowedOrigins'] == null ? null : ((map['allowedOrigins']! as List).cast<String>()).input(),
      supportCredentials: map['supportCredentials'] == null ? null : (map['supportCredentials']! as bool).input(),
    );
  }
}

