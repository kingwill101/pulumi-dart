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
    this.description,
    this.displayName,
    this.entryGroupId,
    this.labels,
    this.location,
    this.project,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      entryGroupId: map['entryGroupId'] == null ? null : (map['entryGroupId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

