// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_key_android_settings.dart';
import 'enterprise_key_ios_settings.dart';
import 'enterprise_key_testing_options.dart';
import 'enterprise_key_waf_settings.dart';
import 'enterprise_key_web_settings.dart';

/// Input properties used for looking up and filtering EnterpriseKey resources.
class EnterpriseKeyState {
  /// Settings for keys that can be used by Android apps.
  final pulumi.Input<EnterpriseKeyAndroidSettings>? androidSettings;
  /// The timestamp corresponding to the creation of this Key.
  final pulumi.Input<String>? createTime;
  /// Human-readable display name of this key. Modifiable by user.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Settings for keys that can be used by iOS apps.
  final pulumi.Input<EnterpriseKeyIosSettings>? iosSettings;
  /// See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource id for the Key, which is the same as the Site Key itself.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Options for user acceptance testing.
  final pulumi.Input<EnterpriseKeyTestingOptions>? testingOptions;
  /// Settings specific to keys that can be used for WAF (Web Application Firewall).
  final pulumi.Input<EnterpriseKeyWafSettings>? wafSettings;
  /// Settings for keys that can be used by websites.
  final pulumi.Input<EnterpriseKeyWebSettings>? webSettings;

  /// Creates a new [EnterpriseKeyState].
  /// [androidSettings] Settings for keys that can be used by Android apps.
  /// [createTime] The timestamp corresponding to the creation of this Key.
  /// [displayName] Human-readable display name of this key. Modifiable by user.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [iosSettings] Settings for keys that can be used by iOS apps.
  /// [labels] See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  /// [name] The resource id for the Key, which is the same as the Site Key itself.
  /// [project] The project for the resource
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [testingOptions] Options for user acceptance testing.
  /// [wafSettings] Settings specific to keys that can be used for WAF (Web Application Firewall).
  /// [webSettings] Settings for keys that can be used by websites.
  EnterpriseKeyState({
    pulumi.Output<EnterpriseKeyAndroidSettings>? androidSettings,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<EnterpriseKeyIosSettings>? iosSettings,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<EnterpriseKeyTestingOptions>? testingOptions,
    pulumi.Output<EnterpriseKeyWafSettings>? wafSettings,
    pulumi.Output<EnterpriseKeyWebSettings>? webSettings,
  }) :
      androidSettings = pulumi.Input.asOptionalInput<EnterpriseKeyAndroidSettings>(androidSettings),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      iosSettings = pulumi.Input.asOptionalInput<EnterpriseKeyIosSettings>(iosSettings),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      testingOptions = pulumi.Input.asOptionalInput<EnterpriseKeyTestingOptions>(testingOptions),
      wafSettings = pulumi.Input.asOptionalInput<EnterpriseKeyWafSettings>(wafSettings),
      webSettings = pulumi.Input.asOptionalInput<EnterpriseKeyWebSettings>(webSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyAndroidSettings, Map<String, dynamic>>(androidSettings, (value) => value.toMap()),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'iosSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyIosSettings, Map<String, dynamic>>(iosSettings, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'testingOptions': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyTestingOptions, Map<String, dynamic>>(testingOptions, (value) => value.toMap()),
      'wafSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyWafSettings, Map<String, dynamic>>(wafSettings, (value) => value.toMap()),
      'webSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseKeyWebSettings, Map<String, dynamic>>(webSettings, (value) => value.toMap()),
    };
  }

  factory EnterpriseKeyState.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyState(
      androidSettings: map['androidSettings'] == null ? null : pulumi.Output.create<EnterpriseKeyAndroidSettings>(EnterpriseKeyAndroidSettings.fromMap((map['androidSettings'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      iosSettings: map['iosSettings'] == null ? null : pulumi.Output.create<EnterpriseKeyIosSettings>(EnterpriseKeyIosSettings.fromMap((map['iosSettings'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      testingOptions: map['testingOptions'] == null ? null : pulumi.Output.create<EnterpriseKeyTestingOptions>(EnterpriseKeyTestingOptions.fromMap((map['testingOptions'] as Map).cast<String, dynamic>())),
      wafSettings: map['wafSettings'] == null ? null : pulumi.Output.create<EnterpriseKeyWafSettings>(EnterpriseKeyWafSettings.fromMap((map['wafSettings'] as Map).cast<String, dynamic>())),
      webSettings: map['webSettings'] == null ? null : pulumi.Output.create<EnterpriseKeyWebSettings>(EnterpriseKeyWebSettings.fromMap((map['webSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

