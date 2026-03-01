// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_conversation_profile_args_doc}
/// Arguments for getConversationProfile.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_conversation_profile_args_doc}
class GetConversationProfileArgs {
  final pulumi.Input<String> conversationProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationProfileArgs].
  /// [conversationProfileId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationProfileArgs({
    required pulumi.Output<String> conversationProfileId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      conversationProfileId = pulumi.Input.asInput<String>(conversationProfileId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationProfileId': conversationProfileId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationProfileArgs(
      conversationProfileId: pulumi.Output.create<String>(map['conversationProfileId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

