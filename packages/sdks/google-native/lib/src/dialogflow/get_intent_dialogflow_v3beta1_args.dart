// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_intent_dialogflow_v3beta1_args_doc}
/// Arguments for getIntent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_intent_dialogflow_v3beta1_args_doc}
class GetIntentDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> intentId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIntentDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [intentId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetIntentDialogflowV3beta1Args({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> intentId,
    pulumi.Output<String>? languageCode,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      intentId = pulumi.Input.asInput<String>(intentId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'intentId': intentId,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIntentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIntentDialogflowV3beta1Args(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      intentId: pulumi.Output.create<String>(map['intentId'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

