// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_participant_args_doc}
/// Arguments for getParticipant.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_participant_args_doc}
class GetParticipantArgs {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> participantId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetParticipantArgs].
  /// [conversationId] Required.
  /// [location] Required.
  /// [participantId] Required.
  /// [project] Optional.
  GetParticipantArgs({
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

  factory GetParticipantArgs.fromMap(Map<String, dynamic> map) {
    return GetParticipantArgs(
      conversationId: (map['conversationId'] as String).input(),
      location: (map['location'] as String).input(),
      participantId: (map['participantId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

