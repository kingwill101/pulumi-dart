// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeBucketWithServerServer {
  /// Base64-encoded PEM blob containing the server certificate concatenated with the private key. Used when the certificate is supplied directly instead of via Key Vault. Mutually exclusive with `keyVault`.
  final pulumi.Input<String>? certificatePem;
  /// The DNS name that resolves to the bucket endpoint IP address.
  final pulumi.Input<String> fqdn;
  /// Behaviour when an existing certificate already matches during a certificate rotation. Possible values are `Update` and `Fail`. Defaults to `Fail`.
  final pulumi.Input<String>? onCertificateConflictAction;

  /// Creates a new [VolumeBucketWithServerServer].
  /// [certificatePem] Base64-encoded PEM blob containing the server certificate concatenated with the private key. Used when the certificate is supplied directly instead of via Key Vault. Mutually exclusive with `keyVault`.
  /// [fqdn] The DNS name that resolves to the bucket endpoint IP address.
  /// [onCertificateConflictAction] Behaviour when an existing certificate already matches during a certificate rotation. Possible values are `Update` and `Fail`. Defaults to `Fail`.
  const VolumeBucketWithServerServer({
    this.certificatePem,
    required this.fqdn,
    this.onCertificateConflictAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePem': ?certificatePem,
      'fqdn': fqdn,
      'onCertificateConflictAction': ?onCertificateConflictAction,
    };
  }

  factory VolumeBucketWithServerServer.fromMap(Map<String, dynamic> map) {
    return VolumeBucketWithServerServer(
      certificatePem: (() { final guardedValue = map['certificatePem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      onCertificateConflictAction: (() { final guardedValue = map['onCertificateConflictAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
