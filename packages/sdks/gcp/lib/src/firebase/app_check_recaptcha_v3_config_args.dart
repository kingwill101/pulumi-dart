// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_check_recaptcha_v3_config_app_check_recaptcha_v3_config_args_doc}
/// The set of arguments for AppCheckRecaptchaV3Config.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_check_recaptcha_v3_config_app_check_recaptcha_v3_config_args_doc}
class AppCheckRecaptchaV3ConfigArgs {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  final pulumi.Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The site secret used to identify your service for reCAPTCHA v3 verification.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> siteSecret;

  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckRecaptchaV3ConfigArgs].
  /// [appId] The ID of an
  /// [project] The ID of the project in which the resource belongs.
  /// [siteSecret] The site secret used to identify your service for reCAPTCHA v3 verification.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
  AppCheckRecaptchaV3ConfigArgs({
    required this.appId,
    this.project,
    required this.siteSecret,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
      'siteSecret': siteSecret,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckRecaptchaV3ConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckRecaptchaV3ConfigArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteSecret: pulumi.Input.fromValue(map['siteSecret'] as String),
      tokenTtl: (() {
        final guardedValue = map['tokenTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
