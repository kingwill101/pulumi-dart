// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_validation_allowed_values_value_oneof_value.dart';
import 'cloud_control_parameter_spec_validation_allowed_values_value_string_list_value.dart';

class CloudControlParameterSpecValidationAllowedValuesValue {
  /// Represents a boolean value.
  final pulumi.Input<bool>? boolValue;

  /// Represents a double value.
  final pulumi.Input<double>? numberValue;

  /// Sub-parameter values.
  /// Structure is documented below.
  final pulumi.Input<
    CloudControlParameterSpecValidationAllowedValuesValueOneofValue
  >?
  oneofValue;

  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<
    CloudControlParameterSpecValidationAllowedValuesValueStringListValue
  >?
  stringListValue;

  /// Represents a string value.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  CloudControlParameterSpecValidationAllowedValuesValue({
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
      'oneofValue':
          ?pulumi.Input.mapOptionalInputValue<
            CloudControlParameterSpecValidationAllowedValuesValueOneofValue,
            Map<String, dynamic>
          >(oneofValue, (value) => value.toMap()),
      'stringListValue':
          ?pulumi.Input.mapOptionalInputValue<
            CloudControlParameterSpecValidationAllowedValuesValueStringListValue,
            Map<String, dynamic>
          >(stringListValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory CloudControlParameterSpecValidationAllowedValuesValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecValidationAllowedValuesValue(
      boolValue: (() {
        final guardedValue = map['boolValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      numberValue: (() {
        final guardedValue = map['numberValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      oneofValue: (() {
        final guardedValue = map['oneofValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudControlParameterSpecValidationAllowedValuesValueOneofValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stringListValue: (() {
        final guardedValue = map['stringListValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudControlParameterSpecValidationAllowedValuesValueStringListValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stringValue: (() {
        final guardedValue = map['stringValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
