// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubeconfig.
class GetKubeconfigContainerV1beta1Result {
  final String? kubeconfig;

  /// Creates a new [GetKubeconfigContainerV1beta1Result].
  /// [kubeconfig] Optional.
  const GetKubeconfigContainerV1beta1Result({
    this.kubeconfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfig': ?kubeconfig,
    };
  }

  factory GetKubeconfigContainerV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigContainerV1beta1Result(
      kubeconfig: (() { final guardedValue = map['kubeconfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
