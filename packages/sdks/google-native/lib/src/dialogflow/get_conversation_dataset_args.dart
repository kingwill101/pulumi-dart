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
    required pulumi.Output<String> conversationDatasetId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      conversationDatasetId = pulumi.Input.asInput<String>(conversationDatasetId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationDatasetId': conversationDatasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationDatasetArgs(
      conversationDatasetId: pulumi.Output.create<String>(map['conversationDatasetId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

