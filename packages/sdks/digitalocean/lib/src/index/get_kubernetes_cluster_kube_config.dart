// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterKubeConfig {
  /// The base64 encoded public certificate used by clients to access the cluster. Only available if token authentication is not supported on your cluster.
  final pulumi.Input<String> clientCertificate;
  /// The base64 encoded private key used by clients to access the cluster. Only available if token authentication is not supported on your cluster.
  final pulumi.Input<String> clientKey;
  /// The base64 encoded public certificate for the cluster's certificate authority.
  final pulumi.Input<String> clusterCaCertificate;
  /// The date and time when the credentials will expire and need to be regenerated.
  final pulumi.Input<String> expiresAt;
  /// The URL of the API server on the Kubernetes master node.
  final pulumi.Input<String> host;
  /// The full contents of the Kubernetes cluster's kubeconfig file.
  final pulumi.Input<String> rawConfig;
  /// The DigitalOcean API access token used by clients to access the cluster.
  final pulumi.Input<String> token;

  /// Creates a new [GetKubernetesClusterKubeConfig].
  /// [clientCertificate] The base64 encoded public certificate used by clients to access the cluster. Only available if token authentication is not supported on your cluster.
  /// [clientKey] The base64 encoded private key used by clients to access the cluster. Only available if token authentication is not supported on your cluster.
  /// [clusterCaCertificate] The base64 encoded public certificate for the cluster's certificate authority.
  /// [expiresAt] The date and time when the credentials will expire and need to be regenerated.
  /// [host] The URL of the API server on the Kubernetes master node.
  /// [rawConfig] The full contents of the Kubernetes cluster's kubeconfig file.
  /// [token] The DigitalOcean API access token used by clients to access the cluster.
  GetKubernetesClusterKubeConfig({
    required this.clientCertificate,
    required this.clientKey,
    required this.clusterCaCertificate,
    required this.expiresAt,
    required this.host,
    required this.rawConfig,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': clientCertificate,
      'clientKey': clientKey,
      'clusterCaCertificate': clusterCaCertificate,
      'expiresAt': expiresAt,
      'host': host,
      'rawConfig': rawConfig,
      'token': token,
    };
  }

  factory GetKubernetesClusterKubeConfig.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterKubeConfig(
      clientCertificate: pulumi.Input.fromValue(map['clientCertificate'] as String),
      clientKey: pulumi.Input.fromValue(map['clientKey'] as String),
      clusterCaCertificate: pulumi.Input.fromValue(map['clusterCaCertificate'] as String),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      rawConfig: pulumi.Input.fromValue(map['rawConfig'] as String),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}

