// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_check_recaptcha_enterprise_config_app_check_recaptcha_enterprise_config_args_doc}
/// The set of arguments for AppCheckRecaptchaEnterpriseConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_check_recaptcha_enterprise_config_app_check_recaptcha_enterprise_config_args_doc}
class AppCheckRecaptchaEnterpriseConfigArgs {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The score-based site key created in reCAPTCHA Enterprise used to invoke reCAPTCHA and generate the reCAPTCHA tokens for your application.
  /// **Important**: This is not the siteSecret (as it is in reCAPTCHA v3), but rather your score-based reCAPTCHA Enterprise site key.
  final pulumi.Input<String> siteKey;
  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA Enterprise artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckRecaptchaEnterpriseConfigArgs].
  /// [appId] The ID of an
  /// [project] The ID of the project in which the resource belongs.
  /// [siteKey] The score-based site key created in reCAPTCHA Enterprise used to invoke reCAPTCHA and generate the reCAPTCHA tokens for your application.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from reCAPTCHA Enterprise artifacts will be valid.
  AppCheckRecaptchaEnterpriseConfigArgs({
    required this.appId,
    this.project,
    required this.siteKey,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
      'siteKey': siteKey,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckRecaptchaEnterpriseConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckRecaptchaEnterpriseConfigArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteKey: pulumi.Input.fromValue(map['siteKey'] as String),
      tokenTtl: (() { final guardedValue = map['tokenTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

