// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_conversation_dataset_args_doc}
/// Arguments for getConversationDataset.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_conversation_dataset_args_doc}
class GetConversationDatasetArgs {
  final pulumi.Input<String> conversationDatasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationDatasetArgs].
  /// [conversationDatasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationDatasetArgs({
    required this.conversationDatasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationDatasetId': conversationDatasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationDatasetArgs(
      conversationDatasetId: (map['conversationDatasetId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

