// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ssis parameter.
class SsisParameterResponse {
  /// Parameter type.
  final pulumi.Input<String>? dataType;
  /// Default value of parameter.
  final pulumi.Input<String>? defaultValue;
  /// Parameter description.
  final pulumi.Input<String>? description;
  /// Design default value of parameter.
  final pulumi.Input<String>? designDefaultValue;
  /// Parameter id.
  final pulumi.Input<double>? id;
  /// Parameter name.
  final pulumi.Input<String>? name;
  /// Whether parameter is required.
  final pulumi.Input<bool>? required;
  /// Whether parameter is sensitive.
  final pulumi.Input<bool>? sensitive;
  /// Default sensitive value of parameter.
  final pulumi.Input<String>? sensitiveDefaultValue;
  /// Parameter value set.
  final pulumi.Input<bool>? valueSet;
  /// Parameter value type.
  final pulumi.Input<String>? valueType;
  /// Parameter reference variable.
  final pulumi.Input<String>? variable;

  /// Creates a new [SsisParameterResponse].
  /// [dataType] Parameter type.
  /// [defaultValue] Default value of parameter.
  /// [description] Parameter description.
  /// [designDefaultValue] Design default value of parameter.
  /// [id] Parameter id.
  /// [name] Parameter name.
  /// [required] Whether parameter is required.
  /// [sensitive] Whether parameter is sensitive.
  /// [sensitiveDefaultValue] Default sensitive value of parameter.
  /// [valueSet] Parameter value set.
  /// [valueType] Parameter value type.
  /// [variable] Parameter reference variable.
  SsisParameterResponse({
    this.dataType,
    this.defaultValue,
    this.description,
    this.designDefaultValue,
    this.id,
    this.name,
    this.required,
    this.sensitive,
    this.sensitiveDefaultValue,
    this.valueSet,
    this.valueType,
    this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'designDefaultValue': ?designDefaultValue,
      'id': ?id,
      'name': ?name,
      'required': ?required,
      'sensitive': ?sensitive,
      'sensitiveDefaultValue': ?sensitiveDefaultValue,
      'valueSet': ?valueSet,
      'valueType': ?valueType,
      'variable': ?variable,
    };
  }

  factory SsisParameterResponse.fromMap(Map<String, dynamic> map) {
    return SsisParameterResponse(
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      designDefaultValue: map['designDefaultValue'] == null ? null : (map['designDefaultValue']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      required: map['required'] == null ? null : (map['required']! as bool).input(),
      sensitive: map['sensitive'] == null ? null : (map['sensitive']! as bool).input(),
      sensitiveDefaultValue: map['sensitiveDefaultValue'] == null ? null : (map['sensitiveDefaultValue']! as String).input(),
      valueSet: map['valueSet'] == null ? null : (map['valueSet']! as bool).input(),
      valueType: map['valueType'] == null ? null : (map['valueType']! as String).input(),
      variable: map['variable'] == null ? null : (map['variable']! as String).input(),
    );
  }
}

