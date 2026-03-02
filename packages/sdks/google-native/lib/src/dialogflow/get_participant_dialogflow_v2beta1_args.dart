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
      conversationId: (map['conversationId'] as String).input(),
      location: (map['location'] as String).input(),
      participantId: (map['participantId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

