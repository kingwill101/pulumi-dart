// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by Cluster.getKubeconfig.
class ClusterGetKubeconfigContainerV1beta1Result {
  final String kubeconfig;

  /// Creates a new [ClusterGetKubeconfigContainerV1beta1Result].
  /// [kubeconfig] Required.
  ClusterGetKubeconfigContainerV1beta1Result({required this.kubeconfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kubeconfig': kubeconfig};
  }

  factory ClusterGetKubeconfigContainerV1beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterGetKubeconfigContainerV1beta1Result(
      kubeconfig: map['kubeconfig'] as String,
    );
  }
}
