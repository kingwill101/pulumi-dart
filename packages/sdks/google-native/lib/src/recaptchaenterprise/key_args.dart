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
  const KeyArgs({
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
      androidSettings: (() { final guardedValue = map['androidSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      iosSettings: (() { final guardedValue = map['iosSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testingOptions: (() { final guardedValue = map['testingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecaptchaenterpriseV1TestingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wafSettings: (() { final guardedValue = map['wafSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecaptchaenterpriseV1WafSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webSettings: (() { final guardedValue = map['webSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
