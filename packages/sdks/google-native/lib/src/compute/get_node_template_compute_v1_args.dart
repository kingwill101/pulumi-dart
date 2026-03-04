// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_node_template_compute_v1_args_doc}
/// Arguments for getNodeTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_node_template_compute_v1_args_doc}
class GetNodeTemplateComputeV1Args {
  final pulumi.Input<String> nodeTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNodeTemplateComputeV1Args].
  /// [nodeTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  GetNodeTemplateComputeV1Args({
    required this.nodeTemplate,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeTemplate': nodeTemplate,
      'project': ?project,
      'region': region,
    };
  }

  factory GetNodeTemplateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateComputeV1Args(
      nodeTemplate: pulumi.Input.fromValue(map['nodeTemplate'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
