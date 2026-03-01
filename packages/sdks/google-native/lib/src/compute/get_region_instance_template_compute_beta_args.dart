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
    required pulumi.Output<String> instanceTemplate,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      instanceTemplate = pulumi.Input.asInput<String>(instanceTemplate),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionInstanceTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateComputeBetaArgs(
      instanceTemplate: pulumi.Output.create<String>(map['instanceTemplate'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

