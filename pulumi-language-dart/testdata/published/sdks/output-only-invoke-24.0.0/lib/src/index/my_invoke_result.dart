// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by myInvoke.
class MyInvokeResult {
  final String result;

  /// Creates a new [MyInvokeResult].
  /// [result] Required.
  const MyInvokeResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory MyInvokeResult.fromMap(Map<String, dynamic> map) {
    return MyInvokeResult(
      result: map['result'] as String,
    );
  }
}
