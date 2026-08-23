// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_instance_template_compute_v1_args_doc}
/// Arguments for getRegionInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_instance_template_compute_v1_args_doc}
class GetRegionInstanceTemplateComputeV1Args {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstanceTemplateComputeV1Args].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionInstanceTemplateComputeV1Args({
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

  factory GetRegionInstanceTemplateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateComputeV1Args(
      instanceTemplate: pulumi.Input.fromValue(map['instanceTemplate'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
