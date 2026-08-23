// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_field_type.dart';

class TagTemplateField {
  /// A description for this field.
  final pulumi.Input<String>? description;
  /// The display name for this field.
  final pulumi.Input<String>? displayName;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> fieldId;
  /// Whether this is a required field. Defaults to false.
  final pulumi.Input<bool>? isRequired;
  /// (Output)
  /// The resource name of the tag template field in URL format. Example: projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}/fields/{field}
  final pulumi.Input<String>? name;
  /// The order of this field with respect to other fields in this tag template.
  /// A higher value indicates a more important field. The value can be negative.
  /// Multiple fields can have the same order, and field orders within a tag do not have to be sequential.
  final pulumi.Input<int>? order;
  /// The type of value this tag field can contain.
  /// Structure is documented below.
  final pulumi.Input<TagTemplateFieldType> type;

  /// Creates a new [TagTemplateField].
  /// [description] A description for this field.
  /// [displayName] The display name for this field.
  /// [fieldId] The identifier for this object. Format specified above.
  /// [isRequired] Whether this is a required field. Defaults to false.
  /// [name] (Output)
  /// [order] The order of this field with respect to other fields in this tag template.
  /// [type] The type of value this tag field can contain.
  const TagTemplateField({
    this.description,
    this.displayName,
    required this.fieldId,
    this.isRequired,
    this.name,
    this.order,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'fieldId': fieldId,
      'isRequired': ?isRequired,
      'name': ?name,
      'order': ?order,
      'type': pulumi.Input.mapInputValue<TagTemplateFieldType, Map<String, dynamic>>(type, (value) => value.toMap()),
    };
  }

  factory TagTemplateField.fromMap(Map<String, dynamic> map) {
    return TagTemplateField(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldId: pulumi.Input.fromValue(map['fieldId'] as String),
      isRequired: (() { final guardedValue = map['isRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(TagTemplateFieldType.fromMap((map['type']! as Map).cast<String, dynamic>())),
    );
  }
}
