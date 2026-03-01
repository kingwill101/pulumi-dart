// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config.dart';
import 'feature_resource_state.dart';
import 'feature_spec.dart';
import 'feature_state.dart';

/// Input properties used for looking up and filtering Feature resources.
class FeatureGkehubState {
  /// Output only. When the Feature resource was created.
  final pulumi.Input<String>? createTime;
  /// Output only. When the Feature resource was deleted.
  final pulumi.Input<String>? deleteTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. Fleet Default Membership Configuration.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfig>? fleetDefaultMemberConfig;
  /// GCP labels for this Feature.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The full, unique name of this Feature resource
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// State of the Feature resource itself.
  /// Structure is documented below.
  final pulumi.Input<List<FeatureResourceState>>? resourceStates;
  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpec>? spec;
  /// (Output)
  /// Output only. The "running state" of the Feature in this Hub.
  /// Structure is documented below.
  final pulumi.Input<List<FeatureState>>? states;
  /// (Output)
  /// The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FeatureGkehubState].
  /// [createTime] Output only. When the Feature resource was created.
  /// [deleteTime] Output only. When the Feature resource was deleted.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [fleetDefaultMemberConfig] Optional. Fleet Default Membership Configuration.
  /// [labels] GCP labels for this Feature.
  /// [location] The location for the resource
  /// [name] The full, unique name of this Feature resource
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [resourceStates] State of the Feature resource itself.
  /// [spec] Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// [states] (Output)
  /// [updateTime] (Output)
  FeatureGkehubState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<FeatureFleetDefaultMemberConfig>? fleetDefaultMemberConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<FeatureResourceState>>? resourceStates,
    pulumi.Output<FeatureSpec>? spec,
    pulumi.Output<List<FeatureState>>? states,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      fleetDefaultMemberConfig = pulumi.Input.asOptionalInput<FeatureFleetDefaultMemberConfig>(fleetDefaultMemberConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      resourceStates = pulumi.Input.asOptionalInput<List<FeatureResourceState>>(resourceStates),
      spec = pulumi.Input.asOptionalInput<FeatureSpec>(spec),
      states = pulumi.Input.asOptionalInput<List<FeatureState>>(states),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'effectiveLabels': ?effectiveLabels,
      'fleetDefaultMemberConfig': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfig, Map<String, dynamic>>(fleetDefaultMemberConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resourceStates': ?pulumi.Input.mapOptionalInputValue<List<FeatureResourceState>, List<Map<String, dynamic>>>(resourceStates, (value) => pulumi.Input.encodeList<FeatureResourceState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spec': ?pulumi.Input.mapOptionalInputValue<FeatureSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'states': ?pulumi.Input.mapOptionalInputValue<List<FeatureState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<FeatureState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory FeatureGkehubState.fromMap(Map<String, dynamic> map) {
    return FeatureGkehubState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      fleetDefaultMemberConfig: map['fleetDefaultMemberConfig'] == null ? null : pulumi.Output.create<FeatureFleetDefaultMemberConfig>(FeatureFleetDefaultMemberConfig.fromMap((map['fleetDefaultMemberConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      resourceStates: map['resourceStates'] == null ? null : pulumi.Output.create<List<FeatureResourceState>>(pulumi.Input.decodeList<FeatureResourceState>(map['resourceStates'], (value) => FeatureResourceState.fromMap((value as Map).cast<String, dynamic>()))),
      spec: map['spec'] == null ? null : pulumi.Output.create<FeatureSpec>(FeatureSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
      states: map['states'] == null ? null : pulumi.Output.create<List<FeatureState>>(pulumi.Input.decodeList<FeatureState>(map['states'], (value) => FeatureState.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

