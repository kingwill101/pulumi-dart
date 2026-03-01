// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterKubeAdminConfig {
  /// Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.
  final String clientCertificate;
  /// Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.
  final String clientKey;
  /// Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.
  final String clusterCaCertificate;
  /// The Kubernetes cluster server host.
  final String host;
  /// A password or token used to authenticate to the Kubernetes cluster.
  final String password;
  /// A username used to authenticate to the Kubernetes cluster.
  final String username;

  /// Creates a new [GetKubernetesClusterKubeAdminConfig].
  /// [clientCertificate] Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.
  /// [clientKey] Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.
  /// [clusterCaCertificate] Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.
  /// [host] The Kubernetes cluster server host.
  /// [password] A password or token used to authenticate to the Kubernetes cluster.
  /// [username] A username used to authenticate to the Kubernetes cluster.
  GetKubernetesClusterKubeAdminConfig({
    required this.clientCertificate,
    required this.clientKey,
    required this.clusterCaCertificate,
    required this.host,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': clientCertificate,
      'clientKey': clientKey,
      'clusterCaCertificate': clusterCaCertificate,
      'host': host,
      'password': password,
      'username': username,
    };
  }

  factory GetKubernetesClusterKubeAdminConfig.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterKubeAdminConfig(
      clientCertificate: map['clientCertificate'] as String,
      clientKey: map['clientKey'] as String,
      clusterCaCertificate: map['clusterCaCertificate'] as String,
      host: map['host'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

