// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getS3Reference.
class GetS3ReferenceResult {
  /// The outputs displayed from Terraform state.
  final Map<String, dynamic> outputs;

  /// Creates a new [GetS3ReferenceResult].
  /// [outputs] The outputs displayed from Terraform state.
  const GetS3ReferenceResult({
    required this.outputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputs': outputs,
    };
  }

  factory GetS3ReferenceResult.fromMap(Map<String, dynamic> map) {
    return GetS3ReferenceResult(
      outputs: (map['outputs'] as Map).cast<String, dynamic>(),
    );
  }
}
