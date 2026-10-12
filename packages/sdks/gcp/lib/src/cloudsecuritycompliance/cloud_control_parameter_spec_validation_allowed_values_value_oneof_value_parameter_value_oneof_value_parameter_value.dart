// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_validation_allowed_values_value_oneof_value_parameter_value_oneof_value_parameter_value_string_list_value.dart';

class CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue {
  /// Represents a boolean value.
  final pulumi.Input<bool?>? boolValue;
  /// Represents a double value.
  final pulumi.Input<double?>? numberValue;
  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValueStringListValue?>? stringListValue;
  /// Represents a string value.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  const CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'numberValue': ?numberValue,
      'stringListValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValueStringListValue, Map<String, dynamic>>(stringListValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      numberValue: (() { final guardedValue = map['numberValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      stringListValue: (() { final guardedValue = map['stringListValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValueStringListValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
