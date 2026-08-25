// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_instance_group_get_region_instance_group_args_doc}
/// Arguments for getRegionInstanceGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_instance_group_get_region_instance_group_args_doc}
class GetRegionInstanceGroupArgs {
  /// The name of the instance group.  One of `name` or `selfLink` must be provided.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If `selfLink` is provided, this value is ignored.  If neither `selfLink`
  /// nor `project` are provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region in which the resource belongs.  If `selfLink`
  /// is provided, this value is ignored.  If neither `selfLink` nor `region` are
  /// provided, the provider region is used.
  final pulumi.Input<String?>? region;
  /// The link to the instance group.  One of `name` or `selfLink` must be provided.
  ///
  /// - - -
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [GetRegionInstanceGroupArgs].
  /// [name] The name of the instance group.  One of `name` or `selfLink` must be provided.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region in which the resource belongs.  If `selfLink`
  /// [selfLink] The link to the instance group.  One of `name` or `selfLink` must be provided.
  const GetRegionInstanceGroupArgs({
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

  factory GetRegionInstanceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
