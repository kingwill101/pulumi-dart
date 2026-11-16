// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataTransferDataSourceEnrollmentParameter {
  /// (Output)
  /// All possible values for parameters with fixed list of options.
  final pulumi.Input<List<String>?>? allowedValues;
  /// (Output)
  /// If true, it should not be used in new transfers, and it should not be visible to users.
  final pulumi.Input<bool?>? deprecated;
  /// (Output)
  /// Parameter description.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// User friendly parameter name.
  final pulumi.Input<String?>? displayName;
  /// (Output)
  /// Cannot be changed after initial transfer config creation. Applies only to custom data sources.
  final pulumi.Input<bool?>? immutable;
  /// (Output)
  /// For list parameters, the max size of the list.
  final pulumi.Input<int?>? maxListSize;
  /// (Output)
  /// For integer and double values specifies maximum allowed value.
  final pulumi.Input<double?>? maxValue;
  /// (Output)
  /// For integer and double values specifies minimum allowed value.
  final pulumi.Input<double?>? minValue;
  /// (Output)
  /// Parameter identifier.
  final pulumi.Input<String?>? paramId;
  /// (Output)
  /// Is parameter required.
  final pulumi.Input<bool?>? required;
  /// (Output)
  /// Parameter type.
  final pulumi.Input<String?>? type;
  /// (Output)
  /// Description of the requirements for this field, in case the user input does not fulfill the regex.
  final pulumi.Input<String?>? validationDescription;
  /// (Output)
  /// URL to a help document to further explain the naming requirements.
  final pulumi.Input<String?>? validationHelpUrl;
  /// (Output)
  /// Regular expression which can be used for parameter validation.
  final pulumi.Input<String?>? validationRegex;

  /// Creates a new [DataTransferDataSourceEnrollmentParameter].
  /// [allowedValues] (Output)
  /// [deprecated] (Output)
  /// [description] (Output)
  /// [displayName] (Output)
  /// [immutable] (Output)
  /// [maxListSize] (Output)
  /// [maxValue] (Output)
  /// [minValue] (Output)
  /// [paramId] (Output)
  /// [required] (Output)
  /// [type] (Output)
  /// [validationDescription] (Output)
  /// [validationHelpUrl] (Output)
  /// [validationRegex] (Output)
  const DataTransferDataSourceEnrollmentParameter({
    this.allowedValues,
    this.deprecated,
    this.description,
    this.displayName,
    this.immutable,
    this.maxListSize,
    this.maxValue,
    this.minValue,
    this.paramId,
    this.required,
    this.type,
    this.validationDescription,
    this.validationHelpUrl,
    this.validationRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'deprecated': ?deprecated,
      'description': ?description,
      'displayName': ?displayName,
      'immutable': ?immutable,
      'maxListSize': ?maxListSize,
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'paramId': ?paramId,
      'required': ?required,
      'type': ?type,
      'validationDescription': ?validationDescription,
      'validationHelpUrl': ?validationHelpUrl,
      'validationRegex': ?validationRegex,
    };
  }

  factory DataTransferDataSourceEnrollmentParameter.fromMap(Map<String, dynamic> map) {
    return DataTransferDataSourceEnrollmentParameter(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deprecated: (() { final guardedValue = map['deprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immutable: (() { final guardedValue = map['immutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxListSize: (() { final guardedValue = map['maxListSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxValue: (() { final guardedValue = map['maxValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minValue: (() { final guardedValue = map['minValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      paramId: (() { final guardedValue = map['paramId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationDescription: (() { final guardedValue = map['validationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationHelpUrl: (() { final guardedValue = map['validationHelpUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationRegex: (() { final guardedValue = map['validationRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
