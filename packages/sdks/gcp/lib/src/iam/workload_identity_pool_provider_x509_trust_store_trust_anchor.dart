// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor {
  /// PEM certificate of the PKI used for validation. Must only contain one
  /// ca certificate(either root or intermediate cert).
  final pulumi.Input<String>? pemCertificate;

  /// Creates a new [WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one
  const WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor({
    this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': ?pemCertificate,
    };
  }

  factory WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor(
      pemCertificate: (() { final guardedValue = map['pemCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
