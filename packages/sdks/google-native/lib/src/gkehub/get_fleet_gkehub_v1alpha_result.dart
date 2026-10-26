// ignore_for_file: unused_element, unnecessary_cast

import 'default_cluster_config_response_gkehub_v1alpha.dart';
import 'fleet_lifecycle_state_response_gkehub_v1alpha.dart';

/// Result data returned by getFleet.
class GetFleetGkehubV1alphaResult {
  /// When the Fleet was created.
  final String? createTime;
  /// Optional. The default cluster configurations to apply across the fleet.
  final DefaultClusterConfigResponseGkehubV1alpha? defaultClusterConfig;
  /// When the Fleet was deleted.
  final String? deleteTime;
  /// Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  final String? displayName;
  /// Optional. Labels for this Fleet.
  final Map<String, String>? labels;
  /// The full, unique resource name of this fleet in the format of `projects/{project}/locations/{location}/fleets/{fleet}`. Each Google Cloud project can have at most one fleet resource, named "default".
  final String? name;
  /// State of the namespace resource.
  final FleetLifecycleStateResponseGkehubV1alpha? state;
  /// Google-generated UUID for this resource. This is unique across all Fleet resources. If a Fleet resource is deleted and another resource with the same name is created, it gets a different uid.
  final String? uid;
  /// When the Fleet was last updated.
  final String? updateTime;

  /// Creates a new [GetFleetGkehubV1alphaResult].
  /// [createTime] When the Fleet was created.
  /// [defaultClusterConfig] Optional. The default cluster configurations to apply across the fleet.
  /// [deleteTime] When the Fleet was deleted.
  /// [displayName] Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  /// [labels] Optional. Labels for this Fleet.
  /// [name] The full, unique resource name of this fleet in the format of `projects/{project}/locations/{location}/fleets/{fleet}`. Each Google Cloud project can have at most one fleet resource, named "default".
  /// [state] State of the namespace resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all Fleet resources. If a Fleet resource is deleted and another resource with the same name is created, it gets a different uid.
  /// [updateTime] When the Fleet was last updated.
  const GetFleetGkehubV1alphaResult({
    this.createTime,
    this.defaultClusterConfig,
    this.deleteTime,
    this.displayName,
    this.labels,
    this.name,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'defaultClusterConfig': ?defaultClusterConfig?.toMap(),
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'state': ?state?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetFleetGkehubV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetFleetGkehubV1alphaResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultClusterConfig: (() { final guardedValue = map['defaultClusterConfig']; if (guardedValue == null) return null; return DefaultClusterConfigResponseGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return FleetLifecycleStateResponseGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
