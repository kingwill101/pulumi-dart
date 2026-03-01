// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_entry_group_datacatalog_v1beta1_args_doc}
/// The set of arguments for EntryGroup.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_entry_group_datacatalog_v1beta1_args_doc}
class EntryGroupDatacatalogV1beta1Args {
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. Default value is an empty string.
  final pulumi.Input<String>? description;
  /// A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  final pulumi.Input<String>? displayName;
  /// Required. The id of the entry group to create. The id must begin with a letter or underscore, contain only English letters, numbers and underscores, and be at most 64 characters.
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String>? location;
  /// The resource name of the entry group in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id} Note that this EntryGroup and its child resources may not actually be stored in the location in this name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [EntryGroupDatacatalogV1beta1Args].
  /// [description] Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. Default value is an empty string.
  /// [displayName] A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  /// [entryGroupId] Required. The id of the entry group to create. The id must begin with a letter or underscore, contain only English letters, numbers and underscores, and be at most 64 characters.
  /// [location] Optional.
  /// [name] The resource name of the entry group in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id} Note that this EntryGroup and its child resources may not actually be stored in the location in this name.
  /// [project] Optional.
  EntryGroupDatacatalogV1beta1Args({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> entryGroupId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'entryGroupId': entryGroupId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory EntryGroupDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EntryGroupDatacatalogV1beta1Args(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      entryGroupId: pulumi.Output.create<String>(map['entryGroupId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

