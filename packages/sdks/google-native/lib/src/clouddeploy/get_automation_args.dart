// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_automation_args_doc}
/// Arguments for getAutomation.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_automation_args_doc}
class GetAutomationArgs {
  final pulumi.Input<String> automationId;
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAutomationArgs].
  /// [automationId] Required.
  /// [deliveryPipelineId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetAutomationArgs({
    required this.automationId,
    required this.deliveryPipelineId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationId': automationId,
      'deliveryPipelineId': deliveryPipelineId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAutomationArgs.fromMap(Map<String, dynamic> map) {
    return GetAutomationArgs(
      automationId: pulumi.Input.fromValue(map['automationId'] as String),
      deliveryPipelineId: pulumi.Input.fromValue(map['deliveryPipelineId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

