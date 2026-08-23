// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubeconfig.
class GetKubeconfigResult {
  final String kubeconfig;

  /// Creates a new [GetKubeconfigResult].
  /// [kubeconfig] Required.
  const GetKubeconfigResult({
    required this.kubeconfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfig': kubeconfig,
    };
  }

  factory GetKubeconfigResult.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigResult(
      kubeconfig: map['kubeconfig'] as String,
    );
  }
}
