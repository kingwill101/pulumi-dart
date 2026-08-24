// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by ComponentCallable.identity.
class ComponentCallableIdentityResult {
  final String result;

  /// Creates a new [ComponentCallableIdentityResult].
  /// [result] Required.
  const ComponentCallableIdentityResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ComponentCallableIdentityResult.fromMap(Map<String, dynamic> map) {
    return ComponentCallableIdentityResult(
      result: map['result'] as String,
    );
  }
}
