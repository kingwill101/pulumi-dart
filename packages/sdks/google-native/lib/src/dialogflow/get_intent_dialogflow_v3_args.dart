// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_intent_dialogflow_v3_args_doc}
/// Arguments for getIntent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_intent_dialogflow_v3_args_doc}
class GetIntentDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> intentId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIntentDialogflowV3Args].
  /// [agentId] Required.
  /// [intentId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetIntentDialogflowV3Args({
    required this.agentId,
    required this.intentId,
    this.languageCode,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'intentId': intentId,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIntentDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetIntentDialogflowV3Args(
      agentId: (map['agentId'] as String).input(),
      intentId: (map['intentId'] as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode']! as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

