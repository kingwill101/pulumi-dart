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
    required this.conversationProfileId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationProfileId': conversationProfileId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationProfileArgs(
      conversationProfileId: pulumi.Input.fromValue(
        map['conversationProfileId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
