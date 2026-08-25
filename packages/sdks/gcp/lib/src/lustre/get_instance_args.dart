// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lustre_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_lustre_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// The instance id of the Lustre instance.
  final pulumi.Input<String> instanceId;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the zone in which the resource belongs. If it is not provided, the provider zone is used.
  final pulumi.Input<String?>? zone;

  /// Creates a new [GetInstanceArgs].
  /// [instanceId] The instance id of the Lustre instance.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [zone] The ID of the zone in which the resource belongs. If it is not provided, the provider zone is used.
  const GetInstanceArgs({
    required this.instanceId,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
