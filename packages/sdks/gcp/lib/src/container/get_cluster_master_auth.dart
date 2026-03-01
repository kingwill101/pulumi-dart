// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_master_auth_client_certificate_config.dart';

class GetClusterMasterAuth {
  /// Base64 encoded public certificate used by clients to authenticate to the cluster endpoint.
  final String clientCertificate;
  /// Whether client certificate authorization is enabled for this cluster.
  final List<GetClusterMasterAuthClientCertificateConfig> clientCertificateConfigs;
  /// Base64 encoded private key used by clients to authenticate to the cluster endpoint.
  final String clientKey;
  /// Base64 encoded public certificate that is the root of trust for the cluster.
  final String clusterCaCertificate;

  /// Creates a new [GetClusterMasterAuth].
  /// [clientCertificate] Base64 encoded public certificate used by clients to authenticate to the cluster endpoint.
  /// [clientCertificateConfigs] Whether client certificate authorization is enabled for this cluster.
  /// [clientKey] Base64 encoded private key used by clients to authenticate to the cluster endpoint.
  /// [clusterCaCertificate] Base64 encoded public certificate that is the root of trust for the cluster.
  GetClusterMasterAuth({
    required this.clientCertificate,
    required this.clientCertificateConfigs,
    required this.clientKey,
    required this.clusterCaCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': clientCertificate,
      'clientCertificateConfigs': pulumi.Input.encodeList<GetClusterMasterAuthClientCertificateConfig, Map<String, dynamic>>(clientCertificateConfigs, (value) => value.toMap()),
      'clientKey': clientKey,
      'clusterCaCertificate': clusterCaCertificate,
    };
  }

  factory GetClusterMasterAuth.fromMap(Map<String, dynamic> map) {
    return GetClusterMasterAuth(
      clientCertificate: map['clientCertificate'] as String,
      clientCertificateConfigs: pulumi.Input.decodeList<GetClusterMasterAuthClientCertificateConfig>(map['clientCertificateConfigs'], (value) => GetClusterMasterAuthClientCertificateConfig.fromMap((value as Map).cast<String, dynamic>())),
      clientKey: map['clientKey'] as String,
      clusterCaCertificate: map['clusterCaCertificate'] as String,
    );
  }
}

