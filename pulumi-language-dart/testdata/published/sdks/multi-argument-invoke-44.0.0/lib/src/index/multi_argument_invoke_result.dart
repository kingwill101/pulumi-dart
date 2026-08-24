// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by multiArgumentInvoke.
class MultiArgumentInvokeResult {
  final String? result;

  /// Creates a new [MultiArgumentInvokeResult].
  /// [result] Optional.
  const MultiArgumentInvokeResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory MultiArgumentInvokeResult.fromMap(Map<String, dynamic> map) {
    return MultiArgumentInvokeResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
