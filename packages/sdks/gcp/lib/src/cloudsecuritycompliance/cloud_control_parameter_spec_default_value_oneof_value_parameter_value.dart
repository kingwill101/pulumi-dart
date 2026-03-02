// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_default_value_oneof_value_parameter_value_string_list_value.dart';

class CloudControlParameterSpecDefaultValueOneofValueParameterValue {
  /// Represents a boolean value.
  final pulumi.Input<bool>? boolValue;
  /// Represents a double value.
  final pulumi.Input<double>? numberValue;
  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue>? stringListValue;
  /// Represents a string value.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [CloudControlParameterSpecDefaultValueOneofValueParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  CloudControlParameterSpecDefaultValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'numberValue': ?numberValue,
      'stringListValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue, Map<String, dynamic>>(stringListValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory CloudControlParameterSpecDefaultValueOneofValueParameterValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecDefaultValueOneofValueParameterValue(
      boolValue: map['boolValue'] == null ? null : (map['boolValue']! as bool).input(),
      numberValue: map['numberValue'] == null ? null : (map['numberValue']! as double).input(),
      stringListValue: map['stringListValue'] == null ? null : (CloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue.fromMap((map['stringListValue']! as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue']! as String).input(),
    );
  }
}

