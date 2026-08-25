// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config.dart';
import 'feature_resource_state.dart';
import 'feature_spec.dart';
import 'feature_state.dart';

/// Input properties used for looking up and filtering Feature resources.
class FeatureGkehubState {
  /// Output only. When the Feature resource was created.
  final pulumi.Input<String?>? createTime;
  /// Output only. When the Feature resource was deleted.
  final pulumi.Input<String?>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Optional. Fleet Default Membership Configuration.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfig?>? fleetDefaultMemberConfig;
  /// GCP labels for this Feature.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the resource
  final pulumi.Input<String?>? location;
  /// The full, unique name of this Feature resource
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// State of the Feature resource itself.
  /// Structure is documented below.
  final pulumi.Input<List<FeatureResourceState>?>? resourceStates;
  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpec?>? spec;
  /// (Output)
  /// Output only. The "running state" of the Feature in this Hub.
  /// Structure is documented below.
  final pulumi.Input<List<FeatureState>?>? states;
  /// (Output)
  /// The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [FeatureGkehubState].
  /// [createTime] Output only. When the Feature resource was created.
  /// [deleteTime] Output only. When the Feature resource was deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const FeatureGkehubState({
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.fleetDefaultMemberConfig,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.resourceStates,
    this.spec,
    this.states,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      fleetDefaultMemberConfig: (() { final guardedValue = map['fleetDefaultMemberConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureFleetDefaultMemberConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceStates: (() { final guardedValue = map['resourceStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureResourceState>(guardedValue, (value) => FeatureResourceState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureState>(guardedValue, (value) => FeatureState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
