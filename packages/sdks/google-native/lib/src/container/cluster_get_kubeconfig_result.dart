// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Cluster.getKubeconfig.
class ClusterGetKubeconfigResult {
  final String kubeconfig;

  /// Creates a new [ClusterGetKubeconfigResult].
  /// [kubeconfig] Required.
  const ClusterGetKubeconfigResult({
    required this.kubeconfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfig': kubeconfig,
    };
  }

  factory ClusterGetKubeconfigResult.fromMap(Map<String, dynamic> map) {
    return ClusterGetKubeconfigResult(
      kubeconfig: map['kubeconfig'] as String,
    );
  }
}

