// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubeconfig.
class GetKubeconfigResult {
  /// The kubeconfig for the cluster.
  final String result;

  /// Creates a new [GetKubeconfigResult].
  /// [result] The kubeconfig for the cluster.
  const GetKubeconfigResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory GetKubeconfigResult.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigResult(
      result: map['result'] as String,
    );
  }
}
