// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadIdentityPoolInlineCertificateIssuanceConfig {
  /// A required mapping of a cloud region to the CA pool resource located in that region used
  /// for certificate issuance, adhering to these constraints:
  /// * **Key format:** A supported cloud region name equivalent to the location identifier in
  /// the corresponding map entry's value.
  /// * **Value format:** A valid CA pool resource path format like:
  /// `projects/{project}/locations/{location}/caPools/{ca_pool}`
  /// * **Region Matching:** Workloads are ONLY issued certificates from CA pools within the
  /// same region. Also the CA pool region (in value) must match the workload's region (key).
  final pulumi.Input<Map<String, String>> caPools;
  /// Key algorithm to use when generating the key pair. This key pair will be used to create
  /// the certificate. If unspecified, this will default to `ECDSA_P256`.
  /// * `RSA_2048`: Specifies RSA with a 2048-bit modulus.
  /// * `RSA_3072`: Specifies RSA with a 3072-bit modulus.
  /// * `RSA_4096`: Specifies RSA with a 4096-bit modulus.
  /// * `ECDSA_P256`: Specifies ECDSA with curve P256.
  /// * `ECDSA_P384`: Specifies ECDSA with curve P384.
  /// Possible values are: `RSA_2048`, `RSA_3072`, `RSA_4096`, `ECDSA_P256`, `ECDSA_P384`.
  final pulumi.Input<String>? keyAlgorithm;
  /// Lifetime of the workload certificates issued by the CA pool in seconds. Must be between
  /// `86400s` (24 hours) to `2592000s` (30 days), ends in the suffix "`s`" (indicating seconds)
  /// and is preceded by the number of seconds. If unspecified, this will be defaulted to
  /// `86400s` (24 hours).
  final pulumi.Input<String>? lifetime;
  /// Rotation window percentage indicating when certificate rotation should be initiated based
  /// on remaining lifetime. Must be between `50` - `80`. If unspecified, this will be defaulted
  /// to `50`.
  final pulumi.Input<int>? rotationWindowPercentage;

  /// Creates a new [WorkloadIdentityPoolInlineCertificateIssuanceConfig].
  /// [caPools] A required mapping of a cloud region to the CA pool resource located in that region used
  /// [keyAlgorithm] Key algorithm to use when generating the key pair. This key pair will be used to create
  /// [lifetime] Lifetime of the workload certificates issued by the CA pool in seconds. Must be between
  /// [rotationWindowPercentage] Rotation window percentage indicating when certificate rotation should be initiated based
  WorkloadIdentityPoolInlineCertificateIssuanceConfig({
    required this.caPools,
    this.keyAlgorithm,
    this.lifetime,
    this.rotationWindowPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPools': caPools,
      'keyAlgorithm': ?keyAlgorithm,
      'lifetime': ?lifetime,
      'rotationWindowPercentage': ?rotationWindowPercentage,
    };
  }

  factory WorkloadIdentityPoolInlineCertificateIssuanceConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolInlineCertificateIssuanceConfig(
      caPools: ((map['caPools'] as Map).cast<String, String>()).input(),
      keyAlgorithm: map['keyAlgorithm'] == null ? null : (map['keyAlgorithm'] as String).input(),
      lifetime: map['lifetime'] == null ? null : (map['lifetime'] as String).input(),
      rotationWindowPercentage: map['rotationWindowPercentage'] == null ? null : (map['rotationWindowPercentage'] as int).input(),
    );
  }
}

