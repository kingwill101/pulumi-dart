// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_traffic_current.dart';
import 'app_hosting_traffic_rollout_policy.dart';
import 'app_hosting_traffic_target.dart';

/// Input properties used for looking up and filtering AppHostingTraffic resources.
class AppHostingTrafficState {
  /// Id of the backend that this Traffic config applies to
  final pulumi.Input<String>? backend;
  /// Time at which the backend was created.
  final pulumi.Input<String>? createTime;
  /// Current state of traffic allocation for the backend.
  /// When setting `target`, this field may differ for some time until the desired state is reached.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingTrafficCurrent>>? currents;
  /// Time at which the backend was deleted.
  final pulumi.Input<String>? deleteTime;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  final pulumi.Input<String>? etag;
  /// The location the Backend that this Traffic config applies to
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the backend traffic config
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/traffic`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The policy for how builds and rollouts are triggered and rolled out.
  /// Structure is documented below.
  final pulumi.Input<AppHostingTrafficRolloutPolicy>? rolloutPolicy;
  /// Set to manually control the desired traffic for the backend. This will
  /// cause current to eventually match this value. The percentages must add
  /// up to 100.
  /// Structure is documented below.
  final pulumi.Input<AppHostingTrafficTarget>? target;
  /// System-assigned, unique identifier.
  final pulumi.Input<String>? uid;
  /// Time at which the backend was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AppHostingTrafficState].
  /// [backend] Id of the backend that this Traffic config applies to
  /// [createTime] Time at which the backend was created.
  /// [currents] Current state of traffic allocation for the backend.
  /// [deleteTime] Time at which the backend was deleted.
  /// [etag] Server-computed checksum based on other values; may be sent
  /// [location] The location the Backend that this Traffic config applies to
  /// [name] Identifier. The resource name of the backend traffic config
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutPolicy] The policy for how builds and rollouts are triggered and rolled out.
  /// [target] Set to manually control the desired traffic for the backend. This will
  /// [uid] System-assigned, unique identifier.
  /// [updateTime] Time at which the backend was last updated.
  AppHostingTrafficState({
    this.backend,
    this.createTime,
    this.currents,
    this.deleteTime,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.rolloutPolicy,
    this.target,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': ?backend,
      'createTime': ?createTime,
      'currents': ?pulumi.Input.mapOptionalInputValue<List<AppHostingTrafficCurrent>, List<Map<String, dynamic>>>(currents, (value) => pulumi.Input.encodeList<AppHostingTrafficCurrent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deleteTime': ?deleteTime,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rolloutPolicy': ?pulumi.Input.mapOptionalInputValue<AppHostingTrafficRolloutPolicy, Map<String, dynamic>>(rolloutPolicy, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<AppHostingTrafficTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory AppHostingTrafficState.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficState(
      backend: map['backend'] == null ? null : (map['backend']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      currents: map['currents'] == null ? null : (pulumi.Input.decodeList<AppHostingTrafficCurrent>(map['currents']!, (value) => AppHostingTrafficCurrent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rolloutPolicy: map['rolloutPolicy'] == null ? null : (AppHostingTrafficRolloutPolicy.fromMap((map['rolloutPolicy']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (AppHostingTrafficTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

