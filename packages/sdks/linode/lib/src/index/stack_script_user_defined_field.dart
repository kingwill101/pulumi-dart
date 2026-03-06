// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackScriptUserDefinedField {
  /// The default value. If not specified, this value will be used.
  final pulumi.Input<String> default_;
  /// An example value for the field.
  final pulumi.Input<String> example;
  /// The StackScript's label is for display purposes only.
  final pulumi.Input<String> label;
  /// A list of acceptable values for the field in any quantity, combination or order.
  final pulumi.Input<String> manyOf;
  /// The name of the field.
  final pulumi.Input<String> name;
  /// A list of acceptable single values for the field.
  final pulumi.Input<String> oneOf;

  /// Creates a new [StackScriptUserDefinedField].
  /// [default_] The default value. If not specified, this value will be used.
  /// [example] An example value for the field.
  /// [label] The StackScript's label is for display purposes only.
  /// [manyOf] A list of acceptable values for the field in any quantity, combination or order.
  /// [name] The name of the field.
  /// [oneOf] A list of acceptable single values for the field.
  const StackScriptUserDefinedField({
    required this.default_,
    required this.example,
    required this.label,
    required this.manyOf,
    required this.name,
    required this.oneOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'example': example,
      'label': label,
      'manyOf': manyOf,
      'name': name,
      'oneOf': oneOf,
    };
  }

  factory StackScriptUserDefinedField.fromMap(Map<String, dynamic> map) {
    return StackScriptUserDefinedField(
      default_: pulumi.Input.fromValue(map['default'] as String),
      example: pulumi.Input.fromValue(map['example'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      manyOf: pulumi.Input.fromValue(map['manyOf'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      oneOf: pulumi.Input.fromValue(map['oneOf'] as String),
    );
  }
}

