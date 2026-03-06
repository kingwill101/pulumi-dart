// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_instance_template_compute_v1_args_doc}
/// Arguments for getInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_instance_template_compute_v1_args_doc}
class GetInstanceTemplateComputeV1Args {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceTemplateComputeV1Args].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  const GetInstanceTemplateComputeV1Args({
    required this.instanceTemplate,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'project': ?project,
    };
  }

  factory GetInstanceTemplateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateComputeV1Args(
      instanceTemplate: pulumi.Input.fromValue(map['instanceTemplate'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

