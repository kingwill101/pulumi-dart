// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRemoteReference.
class GetRemoteReferenceResult {
  /// The outputs displayed from Terraform state.
  final Map<String, dynamic> outputs;

  /// Creates a new [GetRemoteReferenceResult].
  /// [outputs] The outputs displayed from Terraform state.
  GetRemoteReferenceResult({
    required this.outputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputs': outputs,
    };
  }

  factory GetRemoteReferenceResult.fromMap(Map<String, dynamic> map) {
    return GetRemoteReferenceResult(
      outputs: (map['outputs'] as Map).cast<String, dynamic>(),
    );
  }
}

