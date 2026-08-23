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
  const GetParticipantDialogflowV2beta1Args({
    required this.conversationId,
    required this.location,
    required this.participantId,
    this.project,
  });

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
      conversationId: pulumi.Input.fromValue(map['conversationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      participantId: pulumi.Input.fromValue(map['participantId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
