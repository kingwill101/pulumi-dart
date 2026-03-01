// ignore_for_file: unused_element, unnecessary_cast


class FunctionJavascriptUdaInput {
  /// Is this input parameter a configuration parameter? Defaults to `false`.
  final bool? configurationParameter;
  /// The input data type of this JavaScript Function. Possible values include `any`, `array`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  final String type;

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
      configurationParameter: map['configurationParameter'] == null ? null : map['configurationParameter'] as bool,
      type: map['type'] as String,
    );
  }
}

