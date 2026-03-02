// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EntryGroup resources.
class EntryGroupState {
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  final pulumi.Input<String>? description;
  /// A short name to identify the entry group, for example, "analytics data - jan 2011".
  final pulumi.Input<String>? displayName;
  /// The id of the entry group to create. The id must begin with a letter or underscore,
  /// contain only English letters, numbers and underscores, and be at most 64 characters.
  final pulumi.Input<String>? entryGroupId;
  /// The resource name of the entry group in URL format. Example: projects/{project}/locations/{location}/entryGroups/{entryGroupId}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// EntryGroup location region.
  final pulumi.Input<String>? region;

  /// Creates a new [EntryGroupState].
  /// [description] Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  /// [displayName] A short name to identify the entry group, for example, "analytics data - jan 2011".
  /// [entryGroupId] The id of the entry group to create. The id must begin with a letter or underscore,
  /// [name] The resource name of the entry group in URL format. Example: projects/{project}/locations/{location}/entryGroups/{entryGroupId}
  /// [project] The ID of the project in which the resource belongs.
  /// [region] EntryGroup location region.
  EntryGroupState({
    this.description,
    this.displayName,
    this.entryGroupId,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'entryGroupId': ?entryGroupId,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory EntryGroupState.fromMap(Map<String, dynamic> map) {
    return EntryGroupState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      entryGroupId: map['entryGroupId'] == null ? null : (map['entryGroupId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

