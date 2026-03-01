// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_field.dart';

/// Input properties used for looking up and filtering TagTemplate resources.
class TagTemplateState {
  /// The display name for this template.
  final pulumi.Input<String>? displayName;
  /// Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// Structure is documented below.
  final pulumi.Input<List<TagTemplateField>>? fields;
  /// This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  final pulumi.Input<bool>? forceDelete;
  /// The resource name of the tag template in URL format. Example: projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Template location region.
  final pulumi.Input<String>? region;
  /// The id of the tag template to create.
  final pulumi.Input<String>? tagTemplateId;

  /// Creates a new [TagTemplateState].
  /// [displayName] The display name for this template.
  /// [fields] Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// [forceDelete] This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  /// [name] The resource name of the tag template in URL format. Example: projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Template location region.
  /// [tagTemplateId] The id of the tag template to create.
  TagTemplateState({
    pulumi.Output<String>? displayName,
    pulumi.Output<List<TagTemplateField>>? fields,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tagTemplateId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      fields = pulumi.Input.asOptionalInput<List<TagTemplateField>>(fields),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      tagTemplateId = pulumi.Input.asOptionalInput<String>(tagTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<TagTemplateField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<TagTemplateField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDelete': ?forceDelete,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'tagTemplateId': ?tagTemplateId,
    };
  }

  factory TagTemplateState.fromMap(Map<String, dynamic> map) {
    return TagTemplateState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      fields: map['fields'] == null ? null : pulumi.Output.create<List<TagTemplateField>>(pulumi.Input.decodeList<TagTemplateField>(map['fields'], (value) => TagTemplateField.fromMap((value as Map).cast<String, dynamic>()))),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tagTemplateId: map['tagTemplateId'] == null ? null : pulumi.Output.create<String>(map['tagTemplateId'] as String),
    );
  }
}

