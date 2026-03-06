// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMasterAuthClientCertificateConfig {
  /// Whether client certificate authorization is enabled for this cluster.
  final pulumi.Input<bool> issueClientCertificate;

  /// Creates a new [GetClusterMasterAuthClientCertificateConfig].
  /// [issueClientCertificate] Whether client certificate authorization is enabled for this cluster.
  const GetClusterMasterAuthClientCertificateConfig({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueClientCertificate': issueClientCertificate,
    };
  }

  factory GetClusterMasterAuthClientCertificateConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterMasterAuthClientCertificateConfig(
      issueClientCertificate: pulumi.Input.fromValue(map['issueClientCertificate'] as bool),
    );
  }
}

