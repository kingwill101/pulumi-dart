// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_entry_group_entry_group_args_doc}
/// The set of arguments for EntryGroup.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_entry_group_entry_group_args_doc}
class EntryGroupArgs {
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  final pulumi.Input<String>? description;
  /// A short name to identify the entry group, for example, "analytics data - jan 2011".
  final pulumi.Input<String>? displayName;
  /// The id of the entry group to create. The id must begin with a letter or underscore,
  /// contain only English letters, numbers and underscores, and be at most 64 characters.
  final pulumi.Input<String> entryGroupId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// EntryGroup location region.
  final pulumi.Input<String>? region;

  /// Creates a new [EntryGroupArgs].
  /// [description] Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  /// [displayName] A short name to identify the entry group, for example, "analytics data - jan 2011".
  /// [entryGroupId] The id of the entry group to create. The id must begin with a letter or underscore,
  /// [project] The ID of the project in which the resource belongs.
  /// [region] EntryGroup location region.
  EntryGroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> entryGroupId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'entryGroupId': entryGroupId,
      'project': ?project,
      'region': ?region,
    };
  }

  factory EntryGroupArgs.fromMap(Map<String, dynamic> map) {
    return EntryGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      entryGroupId: pulumi.Output.create<String>(map['entryGroupId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

