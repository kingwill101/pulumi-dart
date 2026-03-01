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

  factory GetParticipantArgs.fromMap(Map<String, dynamic> map) {
    return GetParticipantArgs(
      conversationId: pulumi.Output.create<String>(map['conversationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      participantId: pulumi.Output.create<String>(map['participantId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

