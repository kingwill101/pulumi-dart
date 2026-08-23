// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_instance_groups_get_instance_groups_args_doc}
/// Arguments for getInstanceGroups.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_groups_get_instance_groups_args_doc}
class GetInstanceGroupsArgs {
  /// A string filter as defined in the [REST API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/list#query-parameters).
  final pulumi.Input<String>? filter;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The zone of the instance groups. If
  /// it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetInstanceGroupsArgs].
  /// [filter] A string filter as defined in the [REST API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/list#query-parameters).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [zone] The zone of the instance groups. If
  const GetInstanceGroupsArgs({
    this.filter,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetInstanceGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupsArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
