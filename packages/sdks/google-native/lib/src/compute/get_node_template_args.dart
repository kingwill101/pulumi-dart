// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_node_template_args_doc}
/// Arguments for getNodeTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_node_template_args_doc}
class GetNodeTemplateArgs {
  final pulumi.Input<String> nodeTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNodeTemplateArgs].
  /// [nodeTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  GetNodeTemplateArgs({
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

  factory GetNodeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateArgs(
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
