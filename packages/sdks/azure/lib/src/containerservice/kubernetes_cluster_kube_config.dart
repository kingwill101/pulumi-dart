// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterKubeConfig {
  /// Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.
  final pulumi.Input<String>? clientCertificate;
  /// Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.
  final pulumi.Input<String>? clientKey;
  /// Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.
  final pulumi.Input<String>? clusterCaCertificate;
  /// The Kubernetes cluster server host.
  final pulumi.Input<String>? host;
  /// A password or token used to authenticate to the Kubernetes cluster.
  final pulumi.Input<String>? password;
  /// A username used to authenticate to the Kubernetes cluster.
  final pulumi.Input<String>? username;

  /// Creates a new [KubernetesClusterKubeConfig].
  /// [clientCertificate] Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.
  /// [clientKey] Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.
  /// [clusterCaCertificate] Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.
  /// [host] The Kubernetes cluster server host.
  /// [password] A password or token used to authenticate to the Kubernetes cluster.
  /// [username] A username used to authenticate to the Kubernetes cluster.
  KubernetesClusterKubeConfig({
    this.clientCertificate,
    this.clientKey,
    this.clusterCaCertificate,
    this.host,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
      'clusterCaCertificate': ?clusterCaCertificate,
      'host': ?host,
      'password': ?password,
      'username': ?username,
    };
  }

  factory KubernetesClusterKubeConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterKubeConfig(
      clientCertificate: map['clientCertificate'] == null ? null : (map['clientCertificate'] as String).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey'] as String).input(),
      clusterCaCertificate: map['clusterCaCertificate'] == null ? null : (map['clusterCaCertificate'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

