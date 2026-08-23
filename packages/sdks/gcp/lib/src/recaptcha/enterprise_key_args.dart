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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [displayName] Human-readable display name of this key. Modifiable by user.
  /// [iosSettings] Settings for keys that can be used by iOS apps.
  /// [labels] See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  /// [project] The project for the resource
  /// [testingOptions] Options for user acceptance testing.
  /// [wafSettings] Settings specific to keys that can be used for WAF (Web Application Firewall).
  /// [webSettings] Settings for keys that can be used by websites.
  const EnterpriseKeyArgs({
    this.androidSettings,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      androidSettings: (() { final guardedValue = map['androidSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseKeyAndroidSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      iosSettings: (() { final guardedValue = map['iosSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseKeyIosSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testingOptions: (() { final guardedValue = map['testingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseKeyTestingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wafSettings: (() { final guardedValue = map['wafSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseKeyWafSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webSettings: (() { final guardedValue = map['webSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseKeyWebSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
