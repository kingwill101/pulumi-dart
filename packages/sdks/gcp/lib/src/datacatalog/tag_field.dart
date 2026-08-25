// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TagField {
  /// Holds the value for a tag field with boolean type.
  final pulumi.Input<bool?>? boolValue;
  /// (Output)
  /// The display name of this field
  final pulumi.Input<String?>? displayName;
  /// Holds the value for a tag field with double type.
  final pulumi.Input<double?>? doubleValue;
  /// Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
  final pulumi.Input<String?>? enumValue;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> fieldName;
  /// (Output)
  /// The order of this field with respect to other fields in this tag. For example, a higher value can indicate
  /// a more important field. The value can be negative. Multiple fields can have the same order, and field orders
  /// within a tag do not have to be sequential.
  final pulumi.Input<int?>? order;
  /// Holds the value for a tag field with string type.
  final pulumi.Input<String?>? stringValue;
  /// Holds the value for a tag field with timestamp type.
  final pulumi.Input<String?>? timestampValue;

  /// Creates a new [TagField].
  /// [boolValue] Holds the value for a tag field with boolean type.
  /// [displayName] (Output)
  /// [doubleValue] Holds the value for a tag field with double type.
  /// [enumValue] Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
  /// [fieldName] The identifier for this object. Format specified above.
  /// [order] (Output)
  /// [stringValue] Holds the value for a tag field with string type.
  /// [timestampValue] Holds the value for a tag field with timestamp type.
  const TagField({
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
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      doubleValue: (() { final guardedValue = map['doubleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      enumValue: (() { final guardedValue = map['enumValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestampValue: (() { final guardedValue = map['timestampValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
