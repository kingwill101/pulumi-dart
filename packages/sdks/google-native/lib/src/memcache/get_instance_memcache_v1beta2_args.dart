// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_memcache_v1beta2_get_instance_memcache_v1beta2_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_memcache_v1beta2_get_instance_memcache_v1beta2_args_doc}
class GetInstanceMemcacheV1beta2Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceMemcacheV1beta2Args].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetInstanceMemcacheV1beta2Args({
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

  factory GetInstanceMemcacheV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceMemcacheV1beta2Args(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

