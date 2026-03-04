// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_instance_group_manager_get_region_instance_group_manager_args_doc}
/// Arguments for getRegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_instance_group_manager_get_region_instance_group_manager_args_doc}
class GetRegionInstanceGroupManagerArgs {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  ///
  /// * `Region` - (Optional) The region where the managed instance group resides. If not provided, the provider region is used.
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;

  /// The self link of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GetRegionInstanceGroupManagerArgs].
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [region] Optional.
  /// [selfLink] The self link of the instance group. Either `name` or `self_link` must be provided.
  GetRegionInstanceGroupManagerArgs({
    this.name,
    this.project,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory GetRegionInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
