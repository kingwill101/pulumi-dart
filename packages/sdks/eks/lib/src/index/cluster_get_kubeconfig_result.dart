// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Cluster.getKubeconfig.
class ClusterGetKubeconfigResult {
  /// The kubeconfig for the cluster.
  final String result;

  /// Creates a new [ClusterGetKubeconfigResult].
  /// [result] The kubeconfig for the cluster.
  ClusterGetKubeconfigResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ClusterGetKubeconfigResult.fromMap(Map<String, dynamic> map) {
    return ClusterGetKubeconfigResult(
      result: map['result'] as String,
    );
  }
}

