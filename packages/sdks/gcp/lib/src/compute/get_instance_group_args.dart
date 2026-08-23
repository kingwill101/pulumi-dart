// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_instance_group_get_instance_group_args_doc}
/// Arguments for getInstanceGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_group_get_instance_group_args_doc}
class GetInstanceGroupArgs {
  /// The name of the instance group. Either `name` or `selfLink` must be provided.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The self link of the instance group. Either `name` or `selfLink` must be provided.
  final pulumi.Input<String>? selfLink;
  /// The zone of the instance group. If referencing the instance group by name
  /// and `zone` is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetInstanceGroupArgs].
  /// [name] The name of the instance group. Either `name` or `selfLink` must be provided.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [selfLink] The self link of the instance group. Either `name` or `selfLink` must be provided.
  /// [zone] The zone of the instance group. If referencing the instance group by name
  const GetInstanceGroupArgs({
    this.name,
    this.project,
    this.selfLink,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'zone': ?zone,
    };
  }

  factory GetInstanceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
