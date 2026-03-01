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
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? product,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? releaseChannelSettingId,
    pulumi.Output<String>? settingBindingId,
    pulumi.Output<String>? target,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      product = pulumi.Input.asOptionalInput<String>(product),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      releaseChannelSettingId = pulumi.Input.asOptionalInput<String>(releaseChannelSettingId),
      settingBindingId = pulumi.Input.asOptionalInput<String>(settingBindingId),
      target = pulumi.Input.asOptionalInput<String>(target),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      product: map['product'] == null ? null : pulumi.Output.create<String>(map['product'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      releaseChannelSettingId: map['releaseChannelSettingId'] == null ? null : pulumi.Output.create<String>(map['releaseChannelSettingId'] as String),
      settingBindingId: map['settingBindingId'] == null ? null : pulumi.Output.create<String>(map['settingBindingId'] as String),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

