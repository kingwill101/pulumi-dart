// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterKubeAdminConfig {
  /// Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.
  final pulumi.Input<String> clientCertificate;
  /// Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.
  final pulumi.Input<String> clientKey;
  /// Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.
  final pulumi.Input<String> clusterCaCertificate;
  /// The Kubernetes cluster server host.
  final pulumi.Input<String> host;
  /// A password or token used to authenticate to the Kubernetes cluster.
  final pulumi.Input<String> password;
  /// A username used to authenticate to the Kubernetes cluster.
  final pulumi.Input<String> username;

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
      clientCertificate: pulumi.Input.fromValue(map['clientCertificate'] as String),
      clientKey: pulumi.Input.fromValue(map['clientKey'] as String),
      clusterCaCertificate: pulumi.Input.fromValue(map['clusterCaCertificate'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

