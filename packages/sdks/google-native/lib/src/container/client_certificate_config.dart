// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for client certificates on the cluster.
class ClientCertificateConfig {
  /// Issue a client certificate.
  final pulumi.Input<bool>? issueClientCertificate;

  /// Creates a new [ClientCertificateConfig].
  /// [issueClientCertificate] Issue a client certificate.
  ClientCertificateConfig({
    this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueClientCertificate': ?issueClientCertificate,
    };
  }

  factory ClientCertificateConfig.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfig(
      issueClientCertificate: map['issueClientCertificate'] == null ? null : (map['issueClientCertificate']! as bool).input(),
    );
  }
}

