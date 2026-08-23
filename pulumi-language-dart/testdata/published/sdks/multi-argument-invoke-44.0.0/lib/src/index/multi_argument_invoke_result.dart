// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by multiArgumentInvoke.
class MultiArgumentInvokeResult {
  final String result;

  /// Creates a new [MultiArgumentInvokeResult].
  /// [result] Required.
  const MultiArgumentInvokeResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory MultiArgumentInvokeResult.fromMap(Map<String, dynamic> map) {
    return MultiArgumentInvokeResult(
      result: map['result'] as String,
    );
  }
}
