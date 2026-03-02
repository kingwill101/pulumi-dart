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
    this.description,
    required this.displayName,
    this.location,
    this.project,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

