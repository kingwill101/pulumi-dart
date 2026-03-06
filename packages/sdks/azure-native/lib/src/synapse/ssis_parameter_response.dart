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
  const SsisParameterResponse({
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
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      designDefaultValue: (() { final guardedValue = map['designDefaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitive: (() { final guardedValue = map['sensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitiveDefaultValue: (() { final guardedValue = map['sensitiveDefaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSet: (() { final guardedValue = map['valueSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variable: (() { final guardedValue = map['variable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

