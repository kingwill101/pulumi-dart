// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLocalReference.
class GetLocalReferenceResult {
  /// The outputs displayed from Terraform state.
  final Map<String, dynamic>? outputs;

  /// Creates a new [GetLocalReferenceResult].
  /// [outputs] The outputs displayed from Terraform state.
  const GetLocalReferenceResult({
    this.outputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputs': ?outputs,
    };
  }

  factory GetLocalReferenceResult.fromMap(Map<String, dynamic> map) {
    return GetLocalReferenceResult(
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
    );
  }
}
