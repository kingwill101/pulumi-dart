// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStackScriptsStackscriptUserDefinedField {
  /// The default value. If not specified, this value will be used.
  final pulumi.Input<String> default_;
  /// An example value for the field.
  final pulumi.Input<String> example;
  /// A human-readable label for the field that will serve as the input prompt for entering the value during deployment.
  final pulumi.Input<String> label;
  /// A list of acceptable values for the field in any quantity, combination or order.
  final pulumi.Input<String> manyOf;
  /// The name of the field.
  final pulumi.Input<String> name;
  /// A list of acceptable single values for the field.
  final pulumi.Input<String> oneOf;

  /// Creates a new [GetStackScriptsStackscriptUserDefinedField].
  /// [default_] The default value. If not specified, this value will be used.
  /// [example] An example value for the field.
  /// [label] A human-readable label for the field that will serve as the input prompt for entering the value during deployment.
  /// [manyOf] A list of acceptable values for the field in any quantity, combination or order.
  /// [name] The name of the field.
  /// [oneOf] A list of acceptable single values for the field.
  GetStackScriptsStackscriptUserDefinedField({
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

  factory GetStackScriptsStackscriptUserDefinedField.fromMap(Map<String, dynamic> map) {
    return GetStackScriptsStackscriptUserDefinedField(
      default_: (map['default'] as String).input(),
      example: (map['example'] as String).input(),
      label: (map['label'] as String).input(),
      manyOf: (map['manyOf'] as String).input(),
      name: (map['name'] as String).input(),
      oneOf: (map['oneOf'] as String).input(),
    );
  }
}

