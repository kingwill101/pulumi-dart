// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for client certificates on the cluster.
class ClientCertificateConfigContainerV1beta1 {
  /// Issue a client certificate.
  final pulumi.Input<bool>? issueClientCertificate;

  /// Creates a new [ClientCertificateConfigContainerV1beta1].
  /// [issueClientCertificate] Issue a client certificate.
  const ClientCertificateConfigContainerV1beta1({
    this.issueClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueClientCertificate': ?issueClientCertificate,
    };
  }

  factory ClientCertificateConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClientCertificateConfigContainerV1beta1(
      issueClientCertificate: (() { final guardedValue = map['issueClientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
