// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail_parameter_parameter_value_oneof_value.dart';
import 'framework_cloud_control_detail_parameter_parameter_value_string_list_value.dart';

class FrameworkCloudControlDetailParameterParameterValue {
  /// Represents a boolean value.
  final pulumi.Input<bool>? boolValue;
  /// Represents a double value.
  final pulumi.Input<double>? numberValue;
  /// Sub-parameter values.
  /// Structure is documented below.
  final pulumi.Input<FrameworkCloudControlDetailParameterParameterValueOneofValue>? oneofValue;
  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<FrameworkCloudControlDetailParameterParameterValueStringListValue>? stringListValue;
  /// Represents a string value.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  FrameworkCloudControlDetailParameterParameterValue({
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
      'oneofValue': ?pulumi.Input.mapOptionalInputValue<FrameworkCloudControlDetailParameterParameterValueOneofValue, Map<String, dynamic>>(oneofValue, (value) => value.toMap()),
      'stringListValue': ?pulumi.Input.mapOptionalInputValue<FrameworkCloudControlDetailParameterParameterValueStringListValue, Map<String, dynamic>>(stringListValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory FrameworkCloudControlDetailParameterParameterValue.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValue(
      boolValue: map['boolValue'] == null ? null : (map['boolValue'] as bool).input(),
      numberValue: map['numberValue'] == null ? null : (map['numberValue'] as double).input(),
      oneofValue: map['oneofValue'] == null ? null : (FrameworkCloudControlDetailParameterParameterValueOneofValue.fromMap((map['oneofValue'] as Map).cast<String, dynamic>())).input(),
      stringListValue: map['stringListValue'] == null ? null : (FrameworkCloudControlDetailParameterParameterValueStringListValue.fromMap((map['stringListValue'] as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
    );
  }
}

