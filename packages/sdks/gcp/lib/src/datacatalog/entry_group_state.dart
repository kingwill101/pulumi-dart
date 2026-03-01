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
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? entryGroupId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      entryGroupId = pulumi.Input.asOptionalInput<String>(entryGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      entryGroupId: map['entryGroupId'] == null ? null : pulumi.Output.create<String>(map['entryGroupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

