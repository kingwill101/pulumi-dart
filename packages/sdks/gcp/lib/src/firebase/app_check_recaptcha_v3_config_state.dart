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
    pulumi.Output<String>? appId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? siteSecret,
    pulumi.Output<bool>? siteSecretSet,
    pulumi.Output<String>? tokenTtl,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      siteSecret = pulumi.Input.asOptionalInput<String>(siteSecret),
      siteSecretSet = pulumi.Input.asOptionalInput<bool>(siteSecretSet),
      tokenTtl = pulumi.Input.asOptionalInput<String>(tokenTtl);

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
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      siteSecret: map['siteSecret'] == null ? null : pulumi.Output.create<String>(map['siteSecret'] as String),
      siteSecretSet: map['siteSecretSet'] == null ? null : pulumi.Output.create<bool>(map['siteSecretSet'] as bool),
      tokenTtl: map['tokenTtl'] == null ? null : pulumi.Output.create<String>(map['tokenTtl'] as String),
    );
  }
}

