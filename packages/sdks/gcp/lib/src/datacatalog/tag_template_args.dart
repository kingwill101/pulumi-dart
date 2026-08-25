// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_field.dart';

/// {@template pulumi_datacatalog_tag_template_tag_template_args_doc}
/// The set of arguments for TagTemplate.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_tag_template_tag_template_args_doc}
class TagTemplateArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name for this template.
  final pulumi.Input<String?>? displayName;
  /// Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of fieldId will be resulting in re-creating of field. The change of primitiveType will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// Structure is documented below.
  final pulumi.Input<List<TagTemplateField>> fields;
  /// This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  final pulumi.Input<bool?>? forceDelete;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Template location region.
  final pulumi.Input<String?>? region;
  /// The id of the tag template to create.
  final pulumi.Input<String> tagTemplateId;

  /// Creates a new [TagTemplateArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name for this template.
  /// [fields] Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of fieldId will be resulting in re-creating of field. The change of primitiveType will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// [forceDelete] This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Template location region.
  /// [tagTemplateId] The id of the tag template to create.
  const TagTemplateArgs({
    this.deletionPolicy,
    this.displayName,
    required this.fields,
    this.forceDelete,
    this.project,
    this.region,
    required this.tagTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<TagTemplateField>(map['fields']!, (value) => TagTemplateField.fromMap((value as Map).cast<String, dynamic>()))),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagTemplateId: pulumi.Input.fromValue(map['tagTemplateId'] as String),
    );
  }
}
