// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_instance_group_get_region_instance_group_args_doc}
/// Arguments for getRegionInstanceGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_instance_group_get_region_instance_group_args_doc}
class GetRegionInstanceGroupArgs {
  /// The name of the instance group.  One of `name` or `self_link` must be provided.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If `self_link` is provided, this value is ignored.  If neither `self_link`
  /// nor `project` are provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the resource belongs.  If `self_link`
  /// is provided, this value is ignored.  If neither `self_link` nor `region` are
  /// provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The link to the instance group.  One of `name` or `self_link` must be provided.
  ///
  /// - - -
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GetRegionInstanceGroupArgs].
  /// [name] The name of the instance group.  One of `name` or `self_link` must be provided.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region in which the resource belongs.  If `self_link`
  /// [selfLink] The link to the instance group.  One of `name` or `self_link` must be provided.
  GetRegionInstanceGroupArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? selfLink,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
    );
  }
}

