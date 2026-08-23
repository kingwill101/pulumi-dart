// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by identity.
class IdentityInvokeResult {
  final String result;

  /// Creates a new [IdentityInvokeResult].
  /// [result] Required.
  const IdentityInvokeResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory IdentityInvokeResult.fromMap(Map<String, dynamic> map) {
    return IdentityInvokeResult(
      result: map['result'] as String,
    );
  }
}
