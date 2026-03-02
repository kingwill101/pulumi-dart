// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionJavaScriptUDFInput {
  /// Is this input parameter a configuration parameter? Defaults to `false`.
  final pulumi.Input<bool>? configurationParameter;
  /// The Data Type for the Input Argument of this JavaScript Function. Possible values include `array`, `any`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  final pulumi.Input<String> type;

  /// Creates a new [FunctionJavaScriptUDFInput].
  /// [configurationParameter] Is this input parameter a configuration parameter? Defaults to `false`.
  /// [type] The Data Type for the Input Argument of this JavaScript Function. Possible values include `array`, `any`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  FunctionJavaScriptUDFInput({
    this.configurationParameter,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationParameter': ?configurationParameter,
      'type': type,
    };
  }

  factory FunctionJavaScriptUDFInput.fromMap(Map<String, dynamic> map) {
    return FunctionJavaScriptUDFInput(
      configurationParameter: map['configurationParameter'] == null ? null : (map['configurationParameter'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

