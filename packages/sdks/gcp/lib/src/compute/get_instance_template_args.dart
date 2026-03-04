// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_instance_template_get_instance_template_args_doc}
/// Arguments for getInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_template_get_instance_template_args_doc}
class GetInstanceTemplateArgs {
  /// A filter to retrieve the instance templates.
  /// See [API filter parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/list#body.QUERY_PARAMETERS.filter) for reference.
  /// If multiple instance templates match, either adjust the filter or specify `most_recent`.
  /// One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<String>? filter;

  /// If `filter` is provided, ensures the most recent template is returned when multiple instance templates match. One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<bool>? mostRecent;

  /// The name of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If `project` is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The self_link_unique URI of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<String>? selfLinkUnique;

  /// Creates a new [GetInstanceTemplateArgs].
  /// [filter] A filter to retrieve the instance templates.
  /// [mostRecent] If `filter` is provided, ensures the most recent template is returned when multiple instance templates match. One of `name`, `filter` or `self_link_unique` must be provided.
  /// [name] The name of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLinkUnique] The self_link_unique URI of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  GetInstanceTemplateArgs({
    this.filter,
    this.mostRecent,
    this.name,
    this.project,
    this.selfLinkUnique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'project': ?project,
      'selfLinkUnique': ?selfLinkUnique,
    };
  }

  factory GetInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateArgs(
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mostRecent: (() {
        final guardedValue = map['mostRecent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
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
      selfLinkUnique: (() {
        final guardedValue = map['selfLinkUnique'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
