// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_instance_template_get_region_instance_template_args_doc}
/// Arguments for getRegionInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_instance_template_get_region_instance_template_args_doc}
class GetRegionInstanceTemplateArgs {
  /// A filter to retrieve the instance templates.
  /// See [API filter parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates/list#body.QUERY_PARAMETERS.filter) for reference.
  /// If multiple instance templates match, either adjust the filter or specify `mostRecent`. One of `name` or `filter` must be provided.
  final pulumi.Input<String?>? filter;
  /// If `filter` is provided, ensures the most recent template is returned when multiple instance templates match. One of `name` or `filter` must be provided.
  final pulumi.Input<bool?>? mostRecent;
  /// The name of the instance template. One of `name` or `filter` must be provided.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If `project` is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Region in which the resource belongs.
  /// If `region` is not provided, the provider region is used.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetRegionInstanceTemplateArgs].
  /// [filter] A filter to retrieve the instance templates.
  /// [mostRecent] If `filter` is provided, ensures the most recent template is returned when multiple instance templates match. One of `name` or `filter` must be provided.
  /// [name] The name of the instance template. One of `name` or `filter` must be provided.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the resource belongs.
  const GetRegionInstanceTemplateArgs({
    this.filter,
    this.mostRecent,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRegionInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
