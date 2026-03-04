// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instance_template_compute_beta_args_doc}
/// Arguments for getInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instance_template_compute_beta_args_doc}
class GetInstanceTemplateComputeBetaArgs {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceTemplateComputeBetaArgs].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  GetInstanceTemplateComputeBetaArgs({
    required this.instanceTemplate,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'project': ?project,
    };
  }

  factory GetInstanceTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateComputeBetaArgs(
      instanceTemplate: pulumi.Input.fromValue(
        map['instanceTemplate'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
