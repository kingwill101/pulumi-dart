// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiOperationTemplateParameterExample {
  /// A long description for this example.
  final pulumi.Input<String>? description;
  /// A URL that points to the literal example.
  final pulumi.Input<String>? externalValue;
  /// The name of this example.
  final pulumi.Input<String> name;
  /// A short description for this example.
  final pulumi.Input<String>? summary;
  /// The example of the representation.
  final pulumi.Input<String>? value;

  /// Creates a new [ApiOperationTemplateParameterExample].
  /// [description] A long description for this example.
  /// [externalValue] A URL that points to the literal example.
  /// [name] The name of this example.
  /// [summary] A short description for this example.
  /// [value] The example of the representation.
  const ApiOperationTemplateParameterExample({
    this.description,
    this.externalValue,
    required this.name,
    this.summary,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalValue': ?externalValue,
      'name': name,
      'summary': ?summary,
      'value': ?value,
    };
  }

  factory ApiOperationTemplateParameterExample.fromMap(Map<String, dynamic> map) {
    return ApiOperationTemplateParameterExample(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalValue: (() { final guardedValue = map['externalValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

