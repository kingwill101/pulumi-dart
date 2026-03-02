// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_key_android_settings.dart';
import 'enterprise_key_ios_settings.dart';
import 'enterprise_key_testing_options.dart';
import 'enterprise_key_waf_settings.dart';
import 'enterprise_key_web_settings.dart';

/// {@template pulumi_recaptcha_enterprise_key_enterprise_key_args_doc}
/// The set of arguments for EnterpriseKey.
/// {@endtemplate}
/// {@macro pulumi_recaptcha_enterprise_key_enterprise_key_args_doc}
class EnterpriseKeyArgs {
  /// Settings for keys that can be used by Android apps.
  final pulumi.Input<EnterpriseKeyAndroidSettings>? androidSettings;
  /// Human-readable display name of this key. Modifiable by user.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String> displayName;
  /// Settings for keys that can be used by iOS apps.
  final pulumi.Input<EnterpriseKeyIosSettings>? iosSettings;
  /// See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Options for user acceptance testing.
  final pulumi.Input<EnterpriseKeyTestingOptions>? testingOptions;
  /// Settings specific to keys that can be used for WAF (Web Application Firewall).
  final pulumi.Input<EnterpriseKeyWafSettings>? wafSettings;
  /// Settings for keys that can be used by websites.
  final pulumi.Input<EnterpriseKeyWebSettings>? webSettings;

  /// Creates a new [EnterpriseKeyArgs].
  /// [androidSettings] Settings for keys that can be used by Android apps.
  /// [displayName] Human-readable display name of this key. Modifiable by user.
  /// [iosSettings] Settings for keys that can be used by iOS apps.
  /// [labels] See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  /// [project] The project for the resource
  /// [testingOptions] Options for user acceptance testing.
  /// [wafSettings] Settings specific to keys that can be used for WAF (Web Application Firewall).
  /// [webSettings] Settings for keys that can be used by websites.
  EnterpriseKeyArgs({
    this.androidSettings,
    required this.displayName,
    this.iosSettings,
    this.labels,
    this.project,
    this.testingOptions,
    this.wafSettings,
    this.webSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyAndroidSettings, Map<String, dynamic>>(androidSettings, (value) => value.toMap()),
      'displayName': displayName,
      'iosSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyIosSettings, Map<String, dynamic>>(iosSettings, (value) => value.toMap()),
      'labels': ?labels,
      'project': ?project,
      'testingOptions': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyTestingOptions, Map<String, dynamic>>(testingOptions, (value) => value.toMap()),
      'wafSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyWafSettings, Map<String, dynamic>>(wafSettings, (value) => value.toMap()),
      'webSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyWebSettings, Map<String, dynamic>>(webSettings, (value) => value.toMap()),
    };
  }

  factory EnterpriseKeyArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyArgs(
      androidSettings: map['androidSettings'] == null ? null : (EnterpriseKeyAndroidSettings.fromMap((map['androidSettings']! as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      iosSettings: map['iosSettings'] == null ? null : (EnterpriseKeyIosSettings.fromMap((map['iosSettings']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      testingOptions: map['testingOptions'] == null ? null : (EnterpriseKeyTestingOptions.fromMap((map['testingOptions']! as Map).cast<String, dynamic>())).input(),
      wafSettings: map['wafSettings'] == null ? null : (EnterpriseKeyWafSettings.fromMap((map['wafSettings']! as Map).cast<String, dynamic>())).input(),
      webSettings: map['webSettings'] == null ? null : (EnterpriseKeyWebSettings.fromMap((map['webSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

