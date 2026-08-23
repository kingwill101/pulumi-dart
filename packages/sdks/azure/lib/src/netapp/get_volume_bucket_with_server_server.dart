// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeBucketWithServerServer {
  final pulumi.Input<String> certificatePem;
  /// The DNS name that resolves to the bucket endpoint IP address.
  final pulumi.Input<String> fqdn;
  /// The action that runs when a certificate rotation conflicts with an existing certificate.
  final pulumi.Input<String> onCertificateConflictAction;

  /// Creates a new [GetVolumeBucketWithServerServer].
  /// [certificatePem] Required.
  /// [fqdn] The DNS name that resolves to the bucket endpoint IP address.
  /// [onCertificateConflictAction] The action that runs when a certificate rotation conflicts with an existing certificate.
  const GetVolumeBucketWithServerServer({
    required this.certificatePem,
    required this.fqdn,
    required this.onCertificateConflictAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePem': certificatePem,
      'fqdn': fqdn,
      'onCertificateConflictAction': onCertificateConflictAction,
    };
  }

  factory GetVolumeBucketWithServerServer.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketWithServerServer(
      certificatePem: pulumi.Input.fromValue(map['certificatePem'] as String),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      onCertificateConflictAction: pulumi.Input.fromValue(map['onCertificateConflictAction'] as String),
    );
  }
}
