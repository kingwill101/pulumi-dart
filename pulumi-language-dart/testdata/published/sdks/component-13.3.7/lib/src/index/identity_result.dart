// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by identity.
class IdentityResult {
  final String result;

  /// Creates a new [IdentityResult].
  /// [result] Required.
  const IdentityResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory IdentityResult.fromMap(Map<String, dynamic> map) {
    return IdentityResult(
      result: map['result'] as String,
    );
  }
}
