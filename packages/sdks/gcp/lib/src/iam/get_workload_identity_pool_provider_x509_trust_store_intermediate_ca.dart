// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa {
  /// PEM certificate of the PKI used for validation. Must only contain one
  /// ca certificate(either root or intermediate cert).
  final pulumi.Input<String> pemCertificate;

  /// Creates a new [GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one
  GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pemCertificate': pemCertificate};
  }

  factory GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa(
      pemCertificate: pulumi.Input.fromValue(map['pemCertificate'] as String),
    );
  }
}
