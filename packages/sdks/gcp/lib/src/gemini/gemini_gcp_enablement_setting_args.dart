// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_gemini_gcp_enablement_setting_gemini_gcp_enablement_setting_args_doc}
/// The set of arguments for GeminiGcpEnablementSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_gemini_gcp_enablement_setting_gemini_gcp_enablement_setting_args_doc}
class GeminiGcpEnablementSettingArgs {
  /// (Optional, Deprecated)
  /// Whether web grounding should be disabled.
  ///
  /// > **Warning:** `disable_web_grounding` is deprecated. Use `web_grounding_type` instead.
  final pulumi.Input<bool>? disableWebGrounding;
  /// Whether customer data sharing should be enabled.
  final pulumi.Input<bool>? enableCustomerDataSharing;
  /// Id of the Gemini Gcp Enablement setting.
  final pulumi.Input<String> geminiGcpEnablementSettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Web grounding type.
  /// Possible values:
  /// GROUNDING_WITH_GOOGLE_SEARCH
  /// WEB_GROUNDING_FOR_ENTERPRISE
  final pulumi.Input<String>? webGroundingType;

  /// Creates a new [GeminiGcpEnablementSettingArgs].
  /// [disableWebGrounding] (Optional, Deprecated)
  /// [enableCustomerDataSharing] Whether customer data sharing should be enabled.
  /// [geminiGcpEnablementSettingId] Id of the Gemini Gcp Enablement setting.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [webGroundingType] Web grounding type.
  GeminiGcpEnablementSettingArgs({
    this.disableWebGrounding,
    this.enableCustomerDataSharing,
    required this.geminiGcpEnablementSettingId,
    this.labels,
    required this.location,
    this.project,
    this.webGroundingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableWebGrounding': ?disableWebGrounding,
      'enableCustomerDataSharing': ?enableCustomerDataSharing,
      'geminiGcpEnablementSettingId': geminiGcpEnablementSettingId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'webGroundingType': ?webGroundingType,
    };
  }

  factory GeminiGcpEnablementSettingArgs.fromMap(Map<String, dynamic> map) {
    return GeminiGcpEnablementSettingArgs(
      disableWebGrounding: map['disableWebGrounding'] == null ? null : (map['disableWebGrounding']! as bool).input(),
      enableCustomerDataSharing: map['enableCustomerDataSharing'] == null ? null : (map['enableCustomerDataSharing']! as bool).input(),
      geminiGcpEnablementSettingId: (map['geminiGcpEnablementSettingId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      webGroundingType: map['webGroundingType'] == null ? null : (map['webGroundingType']! as String).input(),
    );
  }
}

