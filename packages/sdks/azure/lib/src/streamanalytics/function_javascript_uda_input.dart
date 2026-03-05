// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionJavascriptUdaInput {
  /// Is this input parameter a configuration parameter? Defaults to `false`.
  final pulumi.Input<bool>? configurationParameter;
  /// The input data type of this JavaScript Function. Possible values include `any`, `array`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  final pulumi.Input<String> type;

  /// Creates a new [FunctionJavascriptUdaInput].
  /// [configurationParameter] Is this input parameter a configuration parameter? Defaults to `false`.
  /// [type] The input data type of this JavaScript Function. Possible values include `any`, `array`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  FunctionJavascriptUdaInput({
    this.configurationParameter,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationParameter': ?configurationParameter,
      'type': type,
    };
  }

  factory FunctionJavascriptUdaInput.fromMap(Map<String, dynamic> map) {
    return FunctionJavascriptUdaInput(
      configurationParameter: (() { final guardedValue = map['configurationParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

