// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_default_cluster_config.dart';
import 'fleet_state.dart';

/// Input properties used for looking up and filtering Fleet resources.
class FleetGkehubState {
  /// The time the fleet was created, in RFC3339 text format.
  final pulumi.Input<String?>? createTime;
  /// The default cluster configurations to apply across the fleet.
  /// Structure is documented below.
  final pulumi.Input<FleetDefaultClusterConfig?>? defaultClusterConfig;
  /// The time the fleet was deleted, in RFC3339 text format.
  final pulumi.Input<String?>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Labels for this Fleet.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The state of the fleet resource.
  /// Structure is documented below.
  final pulumi.Input<List<FleetState>?>? states;
  /// Google-generated UUID for this resource. This is unique across all
  /// Fleet resources. If a Fleet resource is deleted and another
  /// resource with the same name is created, it gets a different uid.
  final pulumi.Input<String?>? uid;
  /// The time the fleet was last updated, in RFC3339 text format.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [FleetGkehubState].
  /// [createTime] The time the fleet was created, in RFC3339 text format.
  /// [defaultClusterConfig] The default cluster configurations to apply across the fleet.
  /// [deleteTime] The time the fleet was deleted, in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels for this Fleet.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [states] The state of the fleet resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all
  /// [updateTime] The time the fleet was last updated, in RFC3339 text format.
  const FleetGkehubState({
    this.createTime,
    this.defaultClusterConfig,
    this.deleteTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.project,
    this.pulumiLabels,
    this.states,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'defaultClusterConfig': ?pulumi.Input.mapOptionalInputValue<FleetDefaultClusterConfig, Map<String, dynamic>>(defaultClusterConfig, (value) => value.toMap()),
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'states': ?pulumi.Input.mapOptionalInputValue<List<FleetState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<FleetState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory FleetGkehubState.fromMap(Map<String, dynamic> map) {
    return FleetGkehubState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultClusterConfig: (() { final guardedValue = map['defaultClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetDefaultClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetState>(guardedValue, (value) => FleetState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
