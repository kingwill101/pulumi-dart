// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_instance_template_compute_beta_args_doc}
/// Arguments for getRegionInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_instance_template_compute_beta_args_doc}
class GetRegionInstanceTemplateComputeBetaArgs {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstanceTemplateComputeBetaArgs].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstanceTemplateComputeBetaArgs({
    required this.instanceTemplate,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionInstanceTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateComputeBetaArgs(
      instanceTemplate: (map['instanceTemplate'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

