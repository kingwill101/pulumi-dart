// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterKubeConfig {
  /// The base64 encoded public certificate used by clients to access the cluster. Only available if token authentication is not supported on your cluster.
  final pulumi.Input<String>? clientCertificate;
  /// The base64 encoded private key used by clients to access the cluster. Only available if token authentication is not supported on your cluster.
  final pulumi.Input<String>? clientKey;
  /// The base64 encoded public certificate for the cluster's certificate authority.
  final pulumi.Input<String>? clusterCaCertificate;
  /// The date and time when the credentials will expire and need to be regenerated.
  final pulumi.Input<String>? expiresAt;
  /// The URL of the API server on the Kubernetes master node.
  final pulumi.Input<String>? host;
  /// The full contents of the Kubernetes cluster's kubeconfig file.
  final pulumi.Input<String>? rawConfig;
  /// The DigitalOcean API access token used by clients to access the cluster.
  final pulumi.Input<String>? token;

  /// Creates a new [KubernetesClusterKubeConfig].
  /// [clientCertificate] The base64 encoded public certificate used by clients to access the cluster. Only available if token authentication is not supported on your cluster.
  /// [clientKey] The base64 encoded private key used by clients to access the cluster. Only available if token authentication is not supported on your cluster.
  /// [clusterCaCertificate] The base64 encoded public certificate for the cluster's certificate authority.
  /// [expiresAt] The date and time when the credentials will expire and need to be regenerated.
  /// [host] The URL of the API server on the Kubernetes master node.
  /// [rawConfig] The full contents of the Kubernetes cluster's kubeconfig file.
  /// [token] The DigitalOcean API access token used by clients to access the cluster.
  KubernetesClusterKubeConfig({
    this.clientCertificate,
    this.clientKey,
    this.clusterCaCertificate,
    this.expiresAt,
    this.host,
    this.rawConfig,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
      'clusterCaCertificate': ?clusterCaCertificate,
      'expiresAt': ?expiresAt,
      'host': ?host,
      'rawConfig': ?rawConfig,
      'token': ?token,
    };
  }

  factory KubernetesClusterKubeConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterKubeConfig(
      clientCertificate: map['clientCertificate'] == null ? null : (map['clientCertificate'] as String).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey'] as String).input(),
      clusterCaCertificate: map['clusterCaCertificate'] == null ? null : (map['clusterCaCertificate'] as String).input(),
      expiresAt: map['expiresAt'] == null ? null : (map['expiresAt'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      rawConfig: map['rawConfig'] == null ? null : (map['rawConfig'] as String).input(),
      token: map['token'] == null ? null : (map['token'] as String).input(),
    );
  }
}

