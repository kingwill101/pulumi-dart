// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_instance_group_manager_get_instance_group_manager_args_doc}
/// Arguments for getInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_group_manager_get_instance_group_manager_args_doc}
class GetInstanceGroupManagerArgs {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The self link of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String>? selfLink;
  /// The zone of the instance group. If referencing the instance group by name and `zone` is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetInstanceGroupManagerArgs].
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [selfLink] The self link of the instance group. Either `name` or `self_link` must be provided.
  /// [zone] The zone of the instance group. If referencing the instance group by name and `zone` is not provided, the provider zone is used.
  GetInstanceGroupManagerArgs({
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

  factory GetInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

