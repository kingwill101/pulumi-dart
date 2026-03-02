// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TagField {
  /// Holds the value for a tag field with boolean type.
  final pulumi.Input<bool>? boolValue;
  /// (Output)
  /// The display name of this field
  final pulumi.Input<String>? displayName;
  /// Holds the value for a tag field with double type.
  final pulumi.Input<double>? doubleValue;
  /// Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
  final pulumi.Input<String>? enumValue;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> fieldName;
  /// (Output)
  /// The order of this field with respect to other fields in this tag. For example, a higher value can indicate
  /// a more important field. The value can be negative. Multiple fields can have the same order, and field orders
  /// within a tag do not have to be sequential.
  final pulumi.Input<int>? order;
  /// Holds the value for a tag field with string type.
  final pulumi.Input<String>? stringValue;
  /// Holds the value for a tag field with timestamp type.
  final pulumi.Input<String>? timestampValue;

  /// Creates a new [TagField].
  /// [boolValue] Holds the value for a tag field with boolean type.
  /// [displayName] (Output)
  /// [doubleValue] Holds the value for a tag field with double type.
  /// [enumValue] Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
  /// [fieldName] The identifier for this object. Format specified above.
  /// [order] (Output)
  /// [stringValue] Holds the value for a tag field with string type.
  /// [timestampValue] Holds the value for a tag field with timestamp type.
  TagField({
    this.boolValue,
    this.displayName,
    this.doubleValue,
    this.enumValue,
    required this.fieldName,
    this.order,
    this.stringValue,
    this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'displayName': ?displayName,
      'doubleValue': ?doubleValue,
      'enumValue': ?enumValue,
      'fieldName': fieldName,
      'order': ?order,
      'stringValue': ?stringValue,
      'timestampValue': ?timestampValue,
    };
  }

  factory TagField.fromMap(Map<String, dynamic> map) {
    return TagField(
      boolValue: map['boolValue'] == null ? null : (map['boolValue'] as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      doubleValue: map['doubleValue'] == null ? null : (map['doubleValue'] as double).input(),
      enumValue: map['enumValue'] == null ? null : (map['enumValue'] as String).input(),
      fieldName: (map['fieldName'] as String).input(),
      order: map['order'] == null ? null : (map['order'] as int).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
      timestampValue: map['timestampValue'] == null ? null : (map['timestampValue'] as String).input(),
    );
  }
}

