// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for client certificates on the cluster.
class ClientCertificateConfigResponseContainerV1beta1 {
  /// Issue a client certificate.
  final pulumi.Input<bool> issueClientCertificate;

  /// Creates a new [ClientCertificateConfigResponseContainerV1beta1].
  /// [issueClientCertificate] Issue a client certificate.
  ClientCertificateConfigResponseContainerV1beta1({
    required this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueClientCertificate': issueClientCertificate,
    };
  }

  factory ClientCertificateConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfigResponseContainerV1beta1(
      issueClientCertificate: (map['issueClientCertificate'] as bool).input(),
    );
  }
}

