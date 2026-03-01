// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_field.dart';

/// {@template pulumi_datacatalog_tag_template_tag_template_args_doc}
/// The set of arguments for TagTemplate.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_tag_template_tag_template_args_doc}
class TagTemplateArgs {
  /// The display name for this template.
  final pulumi.Input<String>? displayName;
  /// Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// Structure is documented below.
  final pulumi.Input<List<TagTemplateField>> fields;
  /// This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  final pulumi.Input<bool>? forceDelete;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Template location region.
  final pulumi.Input<String>? region;
  /// The id of the tag template to create.
  final pulumi.Input<String> tagTemplateId;

  /// Creates a new [TagTemplateArgs].
  /// [displayName] The display name for this template.
  /// [fields] Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// [forceDelete] This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Template location region.
  /// [tagTemplateId] The id of the tag template to create.
  TagTemplateArgs({
    pulumi.Output<String>? displayName,
    required pulumi.Output<List<TagTemplateField>> fields,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> tagTemplateId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      fields = pulumi.Input.asInput<List<TagTemplateField>>(fields),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      tagTemplateId = pulumi.Input.asInput<String>(tagTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'fields': pulumi.Input.mapInputValue<List<TagTemplateField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<TagTemplateField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDelete': ?forceDelete,
      'project': ?project,
      'region': ?region,
      'tagTemplateId': tagTemplateId,
    };
  }

  factory TagTemplateArgs.fromMap(Map<String, dynamic> map) {
    return TagTemplateArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      fields: pulumi.Output.create<List<TagTemplateField>>(pulumi.Input.decodeList<TagTemplateField>(map['fields'], (value) => TagTemplateField.fromMap((value as Map).cast<String, dynamic>()))),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tagTemplateId: pulumi.Output.create<String>(map['tagTemplateId'] as String),
    );
  }
}

