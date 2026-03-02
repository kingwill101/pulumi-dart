// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa {
  /// PEM certificate of the PKI used for validation. Must only contain one
  /// ca certificate(either root or intermediate cert).
  final pulumi.Input<String>? pemCertificate;

  /// Creates a new [WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one
  WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa({
    this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': ?pemCertificate,
    };
  }

  factory WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa(
      pemCertificate: map['pemCertificate'] == null ? null : (map['pemCertificate'] as String).input(),
    );
  }
}

