// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_memcache_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_memcache_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// The ID of the memcache instance.
  /// 'memcache_instance_id'
  final pulumi.Input<String> name;
  /// (optional)
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// (optional)
  /// The canonical id of the region. If it is not provided, the provider project is used. For example: us-east1.
  final pulumi.Input<String>? region;

  /// Creates a new [GetInstanceArgs].
  /// [name] The ID of the memcache instance.
  /// [project] (optional)
  /// [region] (optional)
  GetInstanceArgs({
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

