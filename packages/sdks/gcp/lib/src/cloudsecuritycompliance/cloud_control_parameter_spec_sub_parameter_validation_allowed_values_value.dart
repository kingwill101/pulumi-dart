// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_oneof_value.dart';
import 'cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_string_list_value.dart';

class CloudControlParameterSpecSubParameterValidationAllowedValuesValue {
  /// Represents a boolean value.
  final pulumi.Input<bool>? boolValue;
  /// Represents a double value.
  final pulumi.Input<double>? numberValue;
  /// Sub-parameter values.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue>? oneofValue;
  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue>? stringListValue;
  /// Represents a string value.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationAllowedValuesValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  CloudControlParameterSpecSubParameterValidationAllowedValuesValue({
    this.boolValue,
    this.numberValue,
    this.oneofValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'numberValue': ?numberValue,
      'oneofValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue, Map<String, dynamic>>(oneofValue, (value) => value.toMap()),
      'stringListValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue, Map<String, dynamic>>(stringListValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValuesValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidationAllowedValuesValue(
      boolValue: map['boolValue'] == null ? null : (map['boolValue'] as bool).input(),
      numberValue: map['numberValue'] == null ? null : (map['numberValue'] as double).input(),
      oneofValue: map['oneofValue'] == null ? null : (CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue.fromMap((map['oneofValue'] as Map).cast<String, dynamic>())).input(),
      stringListValue: map['stringListValue'] == null ? null : (CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue.fromMap((map['stringListValue'] as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
    );
  }
}

