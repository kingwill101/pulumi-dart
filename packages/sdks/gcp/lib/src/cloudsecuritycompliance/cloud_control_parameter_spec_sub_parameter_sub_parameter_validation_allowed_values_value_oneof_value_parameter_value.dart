// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_sub_parameter_validation_allowed_values_value_oneof_value_parameter_value_string_list_value.dart';

class CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValue {
  /// Represents a boolean value.
  final pulumi.Input<bool?>? boolValue;
  /// Represents a double value.
  final pulumi.Input<double?>? numberValue;
  /// Sub-parameter values, in JSON format.
  final pulumi.Input<String?>? oneofValue;
  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue?>? stringListValue;
  /// Represents a string value.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values, in JSON format.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  const CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValue({
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
      'oneofValue': ?oneofValue,
      'stringListValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue, Map<String, dynamic>>(stringListValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValue(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      numberValue: (() { final guardedValue = map['numberValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      oneofValue: (() { final guardedValue = map['oneofValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringListValue: (() { final guardedValue = map['stringListValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
