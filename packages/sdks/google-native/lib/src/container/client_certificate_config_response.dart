// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for client certificates on the cluster.
class ClientCertificateConfigResponse {
  /// Issue a client certificate.
  final pulumi.Input<bool> issueClientCertificate;

  /// Creates a new [ClientCertificateConfigResponse].
  /// [issueClientCertificate] Issue a client certificate.
  const ClientCertificateConfigResponse({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueClientCertificate': issueClientCertificate,
    };
  }

  factory ClientCertificateConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfigResponse(
      issueClientCertificate: pulumi.Input.fromValue(map['issueClientCertificate'] as bool),
    );
  }
}
