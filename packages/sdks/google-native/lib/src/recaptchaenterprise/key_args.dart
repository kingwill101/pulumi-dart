// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_android_key_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_ioskey_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_testing_options.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings.dart';

/// {@template pulumi_recaptchaenterprise_v1_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_recaptchaenterprise_v1_key_args_doc}
class KeyArgs {
  /// Settings for keys that can be used by Android apps.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1AndroidKeySettings>? androidSettings;
  /// Human-readable display name of this key. Modifiable by user.
  final pulumi.Input<String> displayName;
  /// Settings for keys that can be used by iOS apps.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1IOSKeySettings>? iosSettings;
  /// Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  final pulumi.Input<Map<String, String>>? labels;
  /// Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. Options for user acceptance testing.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1TestingOptions>? testingOptions;
  /// Optional. Settings for WAF
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1WafSettings>? wafSettings;
  /// Settings for keys that can be used by websites.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1WebKeySettings>? webSettings;

  /// Creates a new [KeyArgs].
  /// [androidSettings] Settings for keys that can be used by Android apps.
  /// [displayName] Human-readable display name of this key. Modifiable by user.
  /// [iosSettings] Settings for keys that can be used by iOS apps.
  /// [labels] Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  /// [name] Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  /// [project] Optional.
  /// [testingOptions] Optional. Options for user acceptance testing.
  /// [wafSettings] Optional. Settings for WAF
  /// [webSettings] Settings for keys that can be used by websites.
  KeyArgs({
    this.androidSettings,
    required this.displayName,
    this.iosSettings,
    this.labels,
    this.name,
    this.project,
    this.testingOptions,
    this.wafSettings,
    this.webSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecaptchaenterpriseV1AndroidKeySettings, Map<String, dynamic>>(androidSettings, (value) => value.toMap()),
      'displayName': displayName,
      'iosSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecaptchaenterpriseV1IOSKeySettings, Map<String, dynamic>>(iosSettings, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'testingOptions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecaptchaenterpriseV1TestingOptions, Map<String, dynamic>>(testingOptions, (value) => value.toMap()),
      'wafSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecaptchaenterpriseV1WafSettings, Map<String, dynamic>>(wafSettings, (value) => value.toMap()),
      'webSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecaptchaenterpriseV1WebKeySettings, Map<String, dynamic>>(webSettings, (value) => value.toMap()),
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      androidSettings: map['androidSettings'] == null ? null : (GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromMap((map['androidSettings']! as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      iosSettings: map['iosSettings'] == null ? null : (GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromMap((map['iosSettings']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      testingOptions: map['testingOptions'] == null ? null : (GoogleCloudRecaptchaenterpriseV1TestingOptions.fromMap((map['testingOptions']! as Map).cast<String, dynamic>())).input(),
      wafSettings: map['wafSettings'] == null ? null : (GoogleCloudRecaptchaenterpriseV1WafSettings.fromMap((map['wafSettings']! as Map).cast<String, dynamic>())).input(),
      webSettings: map['webSettings'] == null ? null : (GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromMap((map['webSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

