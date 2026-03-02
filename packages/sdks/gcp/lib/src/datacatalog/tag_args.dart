// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_field.dart';

/// {@template pulumi_datacatalog_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_tag_tag_args_doc}
class TagArgs {
  /// Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
  /// individual column based on that schema.
  /// For attaching a tag to a nested column, use `.` to separate the column names. Example:
  /// `outer_column.inner_column`
  final pulumi.Input<String>? column;
  /// This maps the ID of a tag field to the value of and additional information about that field.
  /// Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields.
  /// Structure is documented below.
  final pulumi.Input<List<TagField>> fields;
  /// The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
  /// all entries in that group.
  final pulumi.Input<String>? parent;
  /// The resource name of the tag template that this tag uses. Example:
  /// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  /// This field cannot be modified after creation.
  final pulumi.Input<String> template;

  /// Creates a new [TagArgs].
  /// [column] Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
  /// [fields] This maps the ID of a tag field to the value of and additional information about that field.
  /// [parent] The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
  /// [template] The resource name of the tag template that this tag uses. Example:
  TagArgs({
    this.column,
    required this.fields,
    this.parent,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': ?column,
      'fields': pulumi.Input.mapInputValue<List<TagField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<TagField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': ?parent,
      'template': template,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      column: map['column'] == null ? null : (map['column']! as String).input(),
      fields: (pulumi.Input.decodeList<TagField>(map['fields'], (value) => TagField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      template: (map['template'] as String).input(),
    );
  }
}

