// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_flow_args_doc}
/// Arguments for getFlow.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_flow_args_doc}
class GetFlowArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFlowArgs].
  /// [agentId] Required.
  /// [flowId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetFlowArgs({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> flowId,
    pulumi.Output<String>? languageCode,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      flowId = pulumi.Input.asInput<String>(flowId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'flowId': flowId,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFlowArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowArgs(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      flowId: pulumi.Output.create<String>(map['flowId'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

