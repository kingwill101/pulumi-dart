// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_tag_template_datacatalog_v1beta1_args_doc}
/// The set of arguments for TagTemplate.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_tag_template_datacatalog_v1beta1_args_doc}
class TagTemplateDatacatalogV1beta1Args {
  /// The display name for this template. Defaults to an empty string.
  final pulumi.Input<String>? displayName;
  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. This map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9) and underscores (_). Field IDs must be at least 1 character long and at most 64 characters long. Field IDs must start with a letter or underscore.
  final pulumi.Input<Map<String, String>> fields;
  final pulumi.Input<String>? location;
  /// The resource name of the tag template in URL format. Example: * projects/{project_id}/locations/{location}/tagTemplates/{tag_template_id} Note that this TagTemplate and its child resources may not actually be stored in the location in this name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. The id of the tag template to create.
  final pulumi.Input<String> tagTemplateId;

  /// Creates a new [TagTemplateDatacatalogV1beta1Args].
  /// [displayName] The display name for this template. Defaults to an empty string.
  /// [fields] Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. This map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9) and underscores (_). Field IDs must be at least 1 character long and at most 64 characters long. Field IDs must start with a letter or underscore.
  /// [location] Optional.
  /// [name] The resource name of the tag template in URL format. Example: * projects/{project_id}/locations/{location}/tagTemplates/{tag_template_id} Note that this TagTemplate and its child resources may not actually be stored in the location in this name.
  /// [project] Optional.
  /// [tagTemplateId] Required. The id of the tag template to create.
  TagTemplateDatacatalogV1beta1Args({
    this.displayName,
    required this.fields,
    this.location,
    this.name,
    this.project,
    required this.tagTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'fields': fields,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'tagTemplateId': tagTemplateId,
    };
  }

  factory TagTemplateDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TagTemplateDatacatalogV1beta1Args(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      fields: ((map['fields'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      tagTemplateId: (map['tagTemplateId'] as String).input(),
    );
  }
}

