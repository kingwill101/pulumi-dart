// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckRecaptchaEnterpriseConfig resources.
class AppCheckRecaptchaEnterpriseConfigState {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  final pulumi.Input<String>? appId;
  /// The relative resource name of the reCAPTCHA Enterprise configuration object
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The score-based site key created in reCAPTCHA Enterprise used to invoke reCAPTCHA and generate the reCAPTCHA tokens for your application.
  /// **Important**: This is not the siteSecret (as it is in reCAPTCHA v3), but rather your score-based reCAPTCHA Enterprise site key.
  final pulumi.Input<String>? siteKey;
  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA Enterprise artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckRecaptchaEnterpriseConfigState].
  /// [appId] The ID of an
  /// [name] The relative resource name of the reCAPTCHA Enterprise configuration object
  /// [project] The ID of the project in which the resource belongs.
  /// [siteKey] The score-based site key created in reCAPTCHA Enterprise used to invoke reCAPTCHA and generate the reCAPTCHA tokens for your application.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from reCAPTCHA Enterprise artifacts will be valid.
  AppCheckRecaptchaEnterpriseConfigState({
    this.appId,
    this.name,
    this.project,
    this.siteKey,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'name': ?name,
      'project': ?project,
      'siteKey': ?siteKey,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckRecaptchaEnterpriseConfigState.fromMap(Map<String, dynamic> map) {
    return AppCheckRecaptchaEnterpriseConfigState(
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      siteKey: map['siteKey'] == null ? null : (map['siteKey']! as String).input(),
      tokenTtl: map['tokenTtl'] == null ? null : (map['tokenTtl']! as String).input(),
    );
  }
}

