// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_instance_template_args_doc}
/// Arguments for getRegionInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_instance_template_args_doc}
class GetRegionInstanceTemplateArgs {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String>? view;

  /// Creates a new [GetRegionInstanceTemplateArgs].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  /// [view] Optional.
  GetRegionInstanceTemplateArgs({
    required this.instanceTemplate,
    this.project,
    required this.region,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'project': ?project,
      'region': region,
      'view': ?view,
    };
  }

  factory GetRegionInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateArgs(
      instanceTemplate: (map['instanceTemplate'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: (map['region'] as String).input(),
      view: map['view'] == null ? null : (map['view'] as String).input(),
    );
  }
}

