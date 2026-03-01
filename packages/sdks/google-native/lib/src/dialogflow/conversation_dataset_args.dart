// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_conversation_dataset_args_doc}
/// The set of arguments for ConversationDataset.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_conversation_dataset_args_doc}
class ConversationDatasetArgs {
  /// Optional. The description of the dataset. Maximum of 10000 bytes.
  final pulumi.Input<String>? description;
  /// The display name of the dataset. Maximum of 64 bytes.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [ConversationDatasetArgs].
  /// [description] Optional. The description of the dataset. Maximum of 10000 bytes.
  /// [displayName] The display name of the dataset. Maximum of 64 bytes.
  /// [location] Optional.
  /// [project] Optional.
  ConversationDatasetArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'location': ?location,
      'project': ?project,
    };
  }

  factory ConversationDatasetArgs.fromMap(Map<String, dynamic> map) {
    return ConversationDatasetArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

