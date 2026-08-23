// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMasterAuthClientCertificateConfig {
  /// Whether client certificate authorization is enabled for this cluster.
  final pulumi.Input<bool> issueClientCertificate;

  /// Creates a new [ClusterMasterAuthClientCertificateConfig].
  /// [issueClientCertificate] Whether client certificate authorization is enabled for this cluster.
  const ClusterMasterAuthClientCertificateConfig({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueClientCertificate': issueClientCertificate,
    };
  }

  factory ClusterMasterAuthClientCertificateConfig.fromMap(Map<String, dynamic> map) {
    return ClusterMasterAuthClientCertificateConfig(
      issueClientCertificate: pulumi.Input.fromValue(map['issueClientCertificate'] as bool),
    );
  }
}
