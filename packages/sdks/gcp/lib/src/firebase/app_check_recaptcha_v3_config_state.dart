// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckRecaptchaV3Config resources.
class AppCheckRecaptchaV3ConfigState {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  final pulumi.Input<String>? appId;
  /// The relative resource name of the reCAPTCHA V3 configuration object
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The site secret used to identify your service for reCAPTCHA v3 verification.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? siteSecret;
  /// Whether the siteSecret was previously set. Since we will never return the siteSecret field, this field is the only way to find out whether it was previously set.
  final pulumi.Input<bool>? siteSecretSet;
  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckRecaptchaV3ConfigState].
  /// [appId] The ID of an
  /// [name] The relative resource name of the reCAPTCHA V3 configuration object
  /// [project] The ID of the project in which the resource belongs.
  /// [siteSecret] The site secret used to identify your service for reCAPTCHA v3 verification.
  /// [siteSecretSet] Whether the siteSecret was previously set. Since we will never return the siteSecret field, this field is the only way to find out whether it was previously set.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
  AppCheckRecaptchaV3ConfigState({
    this.appId,
    this.name,
    this.project,
    this.siteSecret,
    this.siteSecretSet,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'name': ?name,
      'project': ?project,
      'siteSecret': ?siteSecret,
      'siteSecretSet': ?siteSecretSet,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckRecaptchaV3ConfigState.fromMap(Map<String, dynamic> map) {
    return AppCheckRecaptchaV3ConfigState(
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      siteSecret: map['siteSecret'] == null ? null : (map['siteSecret']! as String).input(),
      siteSecretSet: map['siteSecretSet'] == null ? null : (map['siteSecretSet']! as bool).input(),
      tokenTtl: map['tokenTtl'] == null ? null : (map['tokenTtl']! as String).input(),
    );
  }
}

