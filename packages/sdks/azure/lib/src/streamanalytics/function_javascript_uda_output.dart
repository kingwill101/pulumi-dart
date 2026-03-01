// ignore_for_file: unused_element, unnecessary_cast


class FunctionJavascriptUdaOutput {
  /// The output data type from this JavaScript Function. Possible values include `any`, `array`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  final String type;

  /// Creates a new [FunctionJavascriptUdaOutput].
  /// [type] The output data type from this JavaScript Function. Possible values include `any`, `array`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  FunctionJavascriptUdaOutput({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory FunctionJavascriptUdaOutput.fromMap(Map<String, dynamic> map) {
    return FunctionJavascriptUdaOutput(
      type: map['type'] as String,
    );
  }
}

