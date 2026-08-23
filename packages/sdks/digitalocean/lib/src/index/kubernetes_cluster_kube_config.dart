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
  const KubernetesClusterKubeConfig({
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
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterCaCertificate: (() { final guardedValue = map['clusterCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawConfig: (() { final guardedValue = map['rawConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
