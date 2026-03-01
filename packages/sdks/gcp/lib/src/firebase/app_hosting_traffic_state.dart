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
    pulumi.Output<String>? backend,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<AppHostingTrafficCurrent>>? currents,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<AppHostingTrafficRolloutPolicy>? rolloutPolicy,
    pulumi.Output<AppHostingTrafficTarget>? target,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      backend = pulumi.Input.asOptionalInput<String>(backend),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      currents = pulumi.Input.asOptionalInput<List<AppHostingTrafficCurrent>>(currents),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rolloutPolicy = pulumi.Input.asOptionalInput<AppHostingTrafficRolloutPolicy>(rolloutPolicy),
      target = pulumi.Input.asOptionalInput<AppHostingTrafficTarget>(target),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      backend: map['backend'] == null ? null : pulumi.Output.create<String>(map['backend'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      currents: map['currents'] == null ? null : pulumi.Output.create<List<AppHostingTrafficCurrent>>(pulumi.Input.decodeList<AppHostingTrafficCurrent>(map['currents'], (value) => AppHostingTrafficCurrent.fromMap((value as Map).cast<String, dynamic>()))),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rolloutPolicy: map['rolloutPolicy'] == null ? null : pulumi.Output.create<AppHostingTrafficRolloutPolicy>(AppHostingTrafficRolloutPolicy.fromMap((map['rolloutPolicy'] as Map).cast<String, dynamic>())),
      target: map['target'] == null ? null : pulumi.Output.create<AppHostingTrafficTarget>(AppHostingTrafficTarget.fromMap((map['target'] as Map).cast<String, dynamic>())),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

