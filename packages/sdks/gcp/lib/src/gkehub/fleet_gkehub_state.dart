// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_default_cluster_config.dart';
import 'fleet_state.dart';

/// Input properties used for looking up and filtering Fleet resources.
class FleetGkehubState {
  /// The time the fleet was created, in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// The default cluster configurations to apply across the fleet.
  /// Structure is documented below.
  final pulumi.Input<FleetDefaultClusterConfig>? defaultClusterConfig;
  /// The time the fleet was deleted, in RFC3339 text format.
  final pulumi.Input<String>? deleteTime;
  /// A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.
  final pulumi.Input<String>? displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The state of the fleet resource.
  /// Structure is documented below.
  final pulumi.Input<List<FleetState>>? states;
  /// Google-generated UUID for this resource. This is unique across all
  /// Fleet resources. If a Fleet resource is deleted and another
  /// resource with the same name is created, it gets a different uid.
  final pulumi.Input<String>? uid;
  /// The time the fleet was last updated, in RFC3339 text format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FleetGkehubState].
  /// [createTime] The time the fleet was created, in RFC3339 text format.
  /// [defaultClusterConfig] The default cluster configurations to apply across the fleet.
  /// [deleteTime] The time the fleet was deleted, in RFC3339 text format.
  /// [displayName] A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// [project] The ID of the project in which the resource belongs.
  /// [states] The state of the fleet resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all
  /// [updateTime] The time the fleet was last updated, in RFC3339 text format.
  FleetGkehubState({
    this.createTime,
    this.defaultClusterConfig,
    this.deleteTime,
    this.displayName,
    this.project,
    this.states,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'defaultClusterConfig': ?pulumi.Input.mapOptionalInputValue<FleetDefaultClusterConfig, Map<String, dynamic>>(defaultClusterConfig, (value) => value.toMap()),
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'project': ?project,
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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetState>(guardedValue, (value) => FleetState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

