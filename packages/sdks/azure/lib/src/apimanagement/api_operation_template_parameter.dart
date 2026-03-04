// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_template_parameter_example.dart';

class ApiOperationTemplateParameter {
  /// The default value for this Template Parameter.
  final pulumi.Input<String>? defaultValue;

  /// A description of this Template Parameter.
  final pulumi.Input<String>? description;

  /// One or more `example` blocks as defined above.
  final pulumi.Input<List<ApiOperationTemplateParameterExample>>? examples;

  /// The Name of this Template Parameter.
  final pulumi.Input<String> name;

  /// Is this Template Parameter Required?
  final pulumi.Input<bool> required;

  /// The name of the Schema.
  final pulumi.Input<String>? schemaId;

  /// The Type of this Template Parameter, such as a `string`.
  final pulumi.Input<String> type;

  /// The type name defined by the Schema.
  final pulumi.Input<String>? typeName;

  /// One or more acceptable values for this Template Parameter.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ApiOperationTemplateParameter].
  /// [defaultValue] The default value for this Template Parameter.
  /// [description] A description of this Template Parameter.
  /// [examples] One or more `example` blocks as defined above.
  /// [name] The Name of this Template Parameter.
  /// [required] Is this Template Parameter Required?
  /// [schemaId] The name of the Schema.
  /// [type] The Type of this Template Parameter, such as a `string`.
  /// [typeName] The type name defined by the Schema.
  /// [values] One or more acceptable values for this Template Parameter.
  ApiOperationTemplateParameter({
    this.defaultValue,
    this.description,
    this.examples,
    required this.name,
    required this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'examples':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApiOperationTemplateParameterExample>,
            List<Map<String, dynamic>>
          >(
            examples,
            (value) =>
                pulumi.Input.encodeList<
                  ApiOperationTemplateParameterExample,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'required': required,
      'schemaId': ?schemaId,
      'type': type,
      'typeName': ?typeName,
      'values': ?values,
    };
  }

  factory ApiOperationTemplateParameter.fromMap(Map<String, dynamic> map) {
    return ApiOperationTemplateParameter(
      defaultValue: (() {
        final guardedValue = map['defaultValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      examples: (() {
        final guardedValue = map['examples'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApiOperationTemplateParameterExample>(
            guardedValue,
            (value) => ApiOperationTemplateParameterExample.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
      schemaId: (() {
        final guardedValue = map['schemaId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      typeName: (() {
        final guardedValue = map['typeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
