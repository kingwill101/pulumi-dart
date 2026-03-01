// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_entry_group_entry_group_args_doc}
/// The set of arguments for EntryGroup.
/// {@endtemplate}
/// {@macro pulumi_dataplex_entry_group_entry_group_args_doc}
class EntryGroupArgs {
  /// Description of the EntryGroup.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// The entry group id of the entry group.
  final pulumi.Input<String>? entryGroupId;
  /// User-defined labels for the EntryGroup.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where entry group will be created in.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EntryGroupArgs].
  /// [description] Description of the EntryGroup.
  /// [displayName] User friendly display name.
  /// [entryGroupId] The entry group id of the entry group.
  /// [labels] User-defined labels for the EntryGroup.
  /// [location] The location where entry group will be created in.
  /// [project] The ID of the project in which the resource belongs.
  EntryGroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? entryGroupId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      entryGroupId = pulumi.Input.asOptionalInput<String>(entryGroupId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'entryGroupId': ?entryGroupId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory EntryGroupArgs.fromMap(Map<String, dynamic> map) {
    return EntryGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      entryGroupId: map['entryGroupId'] == null ? null : pulumi.Output.create<String>(map['entryGroupId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

