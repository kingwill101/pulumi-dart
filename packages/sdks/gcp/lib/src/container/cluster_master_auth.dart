// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_auth_client_certificate_config.dart';

class ClusterMasterAuth {
  /// Base64 encoded public certificate used by clients to authenticate to the cluster endpoint.
  final pulumi.Input<String>? clientCertificate;
  /// Whether client certificate authorization is enabled for this cluster.  For example:
  final pulumi.Input<ClusterMasterAuthClientCertificateConfig> clientCertificateConfig;
  /// Base64 encoded private key used by clients to authenticate to the cluster endpoint.
  final pulumi.Input<String>? clientKey;
  /// Base64 encoded public certificate that is the root of trust for the cluster.
  final pulumi.Input<String>? clusterCaCertificate;

  /// Creates a new [ClusterMasterAuth].
  /// [clientCertificate] Base64 encoded public certificate used by clients to authenticate to the cluster endpoint.
  /// [clientCertificateConfig] Whether client certificate authorization is enabled for this cluster.  For example:
  /// [clientKey] Base64 encoded private key used by clients to authenticate to the cluster endpoint.
  /// [clusterCaCertificate] Base64 encoded public certificate that is the root of trust for the cluster.
  ClusterMasterAuth({
    this.clientCertificate,
    required this.clientCertificateConfig,
    this.clientKey,
    this.clusterCaCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?clientCertificate,
      'clientCertificateConfig': pulumi.Input.mapInputValue<ClusterMasterAuthClientCertificateConfig, Map<String, dynamic>>(clientCertificateConfig, (value) => value.toMap()),
      'clientKey': ?clientKey,
      'clusterCaCertificate': ?clusterCaCertificate,
    };
  }

  factory ClusterMasterAuth.fromMap(Map<String, dynamic> map) {
    return ClusterMasterAuth(
      clientCertificate: map['clientCertificate'] == null ? null : (map['clientCertificate'] as String).input(),
      clientCertificateConfig: (ClusterMasterAuthClientCertificateConfig.fromMap((map['clientCertificateConfig'] as Map).cast<String, dynamic>())).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey'] as String).input(),
      clusterCaCertificate: map['clusterCaCertificate'] == null ? null : (map['clusterCaCertificate'] as String).input(),
    );
  }
}

