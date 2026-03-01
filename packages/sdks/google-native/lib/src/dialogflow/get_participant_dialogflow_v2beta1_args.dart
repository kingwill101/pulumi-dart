// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_participant_dialogflow_v2beta1_args_doc}
/// Arguments for getParticipant.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_participant_dialogflow_v2beta1_args_doc}
class GetParticipantDialogflowV2beta1Args {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> participantId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetParticipantDialogflowV2beta1Args].
  /// [conversationId] Required.
  /// [location] Required.
  /// [participantId] Required.
  /// [project] Optional.
  GetParticipantDialogflowV2beta1Args({
    required pulumi.Output<String> conversationId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> participantId,
    pulumi.Output<String>? project,
  }) :
      conversationId = pulumi.Input.asInput<String>(conversationId),
      location = pulumi.Input.asInput<String>(location),
      participantId = pulumi.Input.asInput<String>(participantId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationId': conversationId,
      'location': location,
      'participantId': participantId,
      'project': ?project,
    };
  }

  factory GetParticipantDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetParticipantDialogflowV2beta1Args(
      conversationId: pulumi.Output.create<String>(map['conversationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      participantId: pulumi.Output.create<String>(map['participantId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

