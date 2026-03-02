// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GeminiGcpEnablementSetting resources.
class GeminiGcpEnablementSettingState {
  /// Create time stamp.
  final pulumi.Input<String>? createTime;
  /// (Optional, Deprecated)
  /// Whether web grounding should be disabled.
  ///
  /// > **Warning:** `disable_web_grounding` is deprecated. Use `web_grounding_type` instead.
  final pulumi.Input<bool>? disableWebGrounding;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether customer data sharing should be enabled.
  final pulumi.Input<bool>? enableCustomerDataSharing;
  /// Id of the Gemini Gcp Enablement setting.
  final pulumi.Input<String>? geminiGcpEnablementSettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/geminiGcpEnablementSettings/{geminiGcpEnablementSetting}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Update time stamp.
  final pulumi.Input<String>? updateTime;
  /// Web grounding type.
  /// Possible values:
  /// GROUNDING_WITH_GOOGLE_SEARCH
  /// WEB_GROUNDING_FOR_ENTERPRISE
  final pulumi.Input<String>? webGroundingType;

  /// Creates a new [GeminiGcpEnablementSettingState].
  /// [createTime] Create time stamp.
  /// [disableWebGrounding] (Optional, Deprecated)
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableCustomerDataSharing] Whether customer data sharing should be enabled.
  /// [geminiGcpEnablementSettingId] Id of the Gemini Gcp Enablement setting.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] Update time stamp.
  /// [webGroundingType] Web grounding type.
  GeminiGcpEnablementSettingState({
    this.createTime,
    this.disableWebGrounding,
    this.effectiveLabels,
    this.enableCustomerDataSharing,
    this.geminiGcpEnablementSettingId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.updateTime,
    this.webGroundingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'disableWebGrounding': ?disableWebGrounding,
      'effectiveLabels': ?effectiveLabels,
      'enableCustomerDataSharing': ?enableCustomerDataSharing,
      'geminiGcpEnablementSettingId': ?geminiGcpEnablementSettingId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
      'webGroundingType': ?webGroundingType,
    };
  }

  factory GeminiGcpEnablementSettingState.fromMap(Map<String, dynamic> map) {
    return GeminiGcpEnablementSettingState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      disableWebGrounding: map['disableWebGrounding'] == null ? null : (map['disableWebGrounding'] as bool).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      enableCustomerDataSharing: map['enableCustomerDataSharing'] == null ? null : (map['enableCustomerDataSharing'] as bool).input(),
      geminiGcpEnablementSettingId: map['geminiGcpEnablementSettingId'] == null ? null : (map['geminiGcpEnablementSettingId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      webGroundingType: map['webGroundingType'] == null ? null : (map['webGroundingType'] as String).input(),
    );
  }
}

