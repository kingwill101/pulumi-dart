// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_v1beta1_get_instance_redis_v1beta1_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_redis_v1beta1_get_instance_redis_v1beta1_args_doc}
class GetInstanceRedisV1beta1Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceRedisV1beta1Args].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetInstanceRedisV1beta1Args({
    required this.instanceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInstanceRedisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceRedisV1beta1Args(
      instanceId: (map['instanceId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

