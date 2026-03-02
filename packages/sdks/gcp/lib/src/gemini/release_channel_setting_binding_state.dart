// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReleaseChannelSettingBinding resources.
class ReleaseChannelSettingBindingState {
  /// Create time stamp.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/releaseChannelSettings/{setting}/settingBindings/{setting_binding}
  final pulumi.Input<String>? name;
  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CLOUD_ASSIST`, `GEMINI_CODE_ASSIST`.
  final pulumi.Input<String>? product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? releaseChannelSettingId;
  /// Id of the setting binding.
  final pulumi.Input<String>? settingBindingId;
  /// Target of the binding.
  final pulumi.Input<String>? target;
  /// Update time stamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ReleaseChannelSettingBindingState].
  /// [createTime] Create time stamp.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Name of the resource.
  /// [product] Product type of the setting binding.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [releaseChannelSettingId] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [settingBindingId] Id of the setting binding.
  /// [target] Target of the binding.
  /// [updateTime] Update time stamp.
  ReleaseChannelSettingBindingState({
    this.createTime,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.product,
    this.project,
    this.pulumiLabels,
    this.releaseChannelSettingId,
    this.settingBindingId,
    this.target,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'product': ?product,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'releaseChannelSettingId': ?releaseChannelSettingId,
      'settingBindingId': ?settingBindingId,
      'target': ?target,
      'updateTime': ?updateTime,
    };
  }

  factory ReleaseChannelSettingBindingState.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelSettingBindingState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      releaseChannelSettingId: map['releaseChannelSettingId'] == null ? null : (map['releaseChannelSettingId']! as String).input(),
      settingBindingId: map['settingBindingId'] == null ? null : (map['settingBindingId']! as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

