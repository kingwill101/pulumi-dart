// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by identity.
class IdentityInvokeResult {
  final String? result;

  /// Creates a new [IdentityInvokeResult].
  /// [result] Optional.
  const IdentityInvokeResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory IdentityInvokeResult.fromMap(Map<String, dynamic> map) {
    return IdentityInvokeResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
