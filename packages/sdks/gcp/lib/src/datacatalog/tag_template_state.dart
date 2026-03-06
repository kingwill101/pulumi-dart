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
  const TagTemplateState({
    this.displayName,
    this.fields,
    this.forceDelete,
    this.name,
    this.project,
    this.region,
    this.tagTemplateId,
  });

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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagTemplateField>(guardedValue, (value) => TagTemplateField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagTemplateId: (() { final guardedValue = map['tagTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

