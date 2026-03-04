// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_field.dart';

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
  /// individual column based on that schema.
  /// For attaching a tag to a nested column, use `.` to separate the column names. Example:
  /// `outer_column.inner_column`
  final pulumi.Input<String>? column;

  /// This maps the ID of a tag field to the value of and additional information about that field.
  /// Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields.
  /// Structure is documented below.
  final pulumi.Input<List<TagField>>? fields;

  /// The resource name of the tag in URL format. Example:
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}/tags/{tag_id} or
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/tags/{tag_id}
  /// where tag_id is a system-generated identifier. Note that this Tag may not actually be stored in the location in this name.
  final pulumi.Input<String>? name;

  /// The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
  /// all entries in that group.
  final pulumi.Input<String>? parent;

  /// The resource name of the tag template that this tag uses. Example:
  /// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  /// This field cannot be modified after creation.
  final pulumi.Input<String>? template;

  /// The display name of the tag template.
  final pulumi.Input<String>? templateDisplayname;

  /// Creates a new [TagState].
  /// [column] Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
  /// [fields] This maps the ID of a tag field to the value of and additional information about that field.
  /// [name] The resource name of the tag in URL format. Example:
  /// [parent] The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
  /// [template] The resource name of the tag template that this tag uses. Example:
  /// [templateDisplayname] The display name of the tag template.
  TagState({
    this.column,
    this.fields,
    this.name,
    this.parent,
    this.template,
    this.templateDisplayname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': ?column,
      'fields':
          ?pulumi.Input.mapOptionalInputValue<
            List<TagField>,
            List<Map<String, dynamic>>
          >(
            fields,
            (value) => pulumi.Input.encodeList<TagField, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'name': ?name,
      'parent': ?parent,
      'template': ?template,
      'templateDisplayname': ?templateDisplayname,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      column: (() {
        final guardedValue = map['column'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fields: (() {
        final guardedValue = map['fields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TagField>(
            guardedValue,
            (value) => TagField.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      template: (() {
        final guardedValue = map['template'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateDisplayname: (() {
        final guardedValue = map['templateDisplayname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
