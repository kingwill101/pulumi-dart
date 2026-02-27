// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLocalReference.
class GetLocalReferenceResult {
  /// The outputs displayed from Terraform state.
  final Map<String, dynamic> outputs;

  GetLocalReferenceResult({
    required this.outputs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['outputs'] = outputs;
    return map;
  }

  factory GetLocalReferenceResult.fromMap(Map<String, dynamic> map) {
    return GetLocalReferenceResult(
      outputs: (map['outputs'] as Map).cast<String, dynamic>(),
    );
  }
}
