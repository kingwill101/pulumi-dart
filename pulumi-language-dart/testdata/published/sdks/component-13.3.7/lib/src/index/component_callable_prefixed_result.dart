// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by ComponentCallable.prefixed.
class ComponentCallablePrefixedResult {
  final String result;

  /// Creates a new [ComponentCallablePrefixedResult].
  /// [result] Required.
  const ComponentCallablePrefixedResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ComponentCallablePrefixedResult.fromMap(Map<String, dynamic> map) {
    return ComponentCallablePrefixedResult(
      result: map['result'] as String,
    );
  }
}
