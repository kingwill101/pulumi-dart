// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail_parameter_parameter_value_oneof_value.dart';
import 'framework_cloud_control_detail_parameter_parameter_value_string_list_value.dart';

class FrameworkCloudControlDetailParameterParameterValue {
  /// Represents a boolean value.
  final pulumi.Input<bool?>? boolValue;
  /// Represents a double value.
  final pulumi.Input<double?>? numberValue;
  /// Sub-parameter values.
  /// Structure is documented below.
  final pulumi.Input<FrameworkCloudControlDetailParameterParameterValueOneofValue?>? oneofValue;
  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<FrameworkCloudControlDetailParameterParameterValueStringListValue?>? stringListValue;
  /// Represents a string value.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  const FrameworkCloudControlDetailParameterParameterValue({
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
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      numberValue: (() { final guardedValue = map['numberValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      oneofValue: (() { final guardedValue = map['oneofValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkCloudControlDetailParameterParameterValueOneofValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringListValue: (() { final guardedValue = map['stringListValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkCloudControlDetailParameterParameterValueStringListValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
