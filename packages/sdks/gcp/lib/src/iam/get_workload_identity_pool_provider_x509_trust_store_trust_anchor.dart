// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor {
  /// PEM certificate of the PKI used for validation. Must only contain one
  /// ca certificate(either root or intermediate cert).
  final pulumi.Input<String> pemCertificate;

  /// Creates a new [GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one
  GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': pemCertificate,
    };
  }

  factory GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor(
      pemCertificate: pulumi.Input.fromValue(map['pemCertificate'] as String),
    );
  }
}

