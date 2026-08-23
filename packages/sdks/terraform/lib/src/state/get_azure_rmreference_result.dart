// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAzureRMReference.
class GetAzureRMReferenceResult {
  /// The outputs displayed from Terraform state.
  final Map<String, dynamic> outputs;

  /// Creates a new [GetAzureRMReferenceResult].
  /// [outputs] The outputs displayed from Terraform state.
  const GetAzureRMReferenceResult({
    required this.outputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputs': outputs,
    };
  }

  factory GetAzureRMReferenceResult.fromMap(Map<String, dynamic> map) {
    return GetAzureRMReferenceResult(
      outputs: (map['outputs'] as Map).cast<String, dynamic>(),
    );
  }
}
