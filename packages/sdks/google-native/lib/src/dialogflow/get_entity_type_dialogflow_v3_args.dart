// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_entity_type_dialogflow_v3_args_doc}
/// Arguments for getEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_entity_type_dialogflow_v3_args_doc}
class GetEntityTypeDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntityTypeDialogflowV3Args].
  /// [agentId] Required.
  /// [entityTypeId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetEntityTypeDialogflowV3Args({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> entityTypeId,
    pulumi.Output<String>? languageCode,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'entityTypeId': entityTypeId,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntityTypeDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeDialogflowV3Args(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      entityTypeId: pulumi.Output.create<String>(map['entityTypeId'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

