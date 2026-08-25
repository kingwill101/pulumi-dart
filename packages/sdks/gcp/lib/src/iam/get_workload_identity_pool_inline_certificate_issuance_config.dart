// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkloadIdentityPoolInlineCertificateIssuanceConfig {
  /// A required mapping of a cloud region to the CA pool resource located in that region used
  /// for certificate issuance, adhering to these constraints:
  ///
  /// * **Key format:** A supported cloud region name equivalent to the location identifier in
  /// the corresponding map entry's value.
  /// * **Value format:** A valid CA pool resource path format like:
  /// 'projects/{project}/locations/{location}/caPools/{ca_pool}'
  /// * **Region Matching:** Workloads are ONLY issued certificates from CA pools within the
  /// same region. Also the CA pool region (in value) must match the workload's region (key).
  final pulumi.Input<Map<String, String>> caPools;
  /// Key algorithm to use when generating the key pair. This key pair will be used to create
  /// the certificate. If unspecified, this will default to 'ECDSA_P256'.
  ///
  /// * 'RSA_2048': Specifies RSA with a 2048-bit modulus.
  /// * 'RSA_3072': Specifies RSA with a 3072-bit modulus.
  /// * 'RSA_4096': Specifies RSA with a 4096-bit modulus.
  /// * 'ECDSA_P256': Specifies ECDSA with curve P256.
  /// * 'ECDSA_P384': Specifies ECDSA with curve P384. Possible values: ["RSA_2048", "RSA_3072", "RSA_4096", "ECDSA_P256", "ECDSA_P384"]
  final pulumi.Input<String> keyAlgorithm;
  /// Lifetime of the workload certificates issued by the CA pool in seconds. Must be between
  /// '86400s' (24 hours) to '2592000s' (30 days), ends in the suffix "'s'" (indicating seconds)
  /// and is preceded by the number of seconds. If unspecified, this will be defaulted to
  /// '86400s' (24 hours).
  final pulumi.Input<String> lifetime;
  /// Rotation window percentage indicating when certificate rotation should be initiated based
  /// on remaining lifetime. Must be between '50' - '80'. If unspecified, this will be defaulted
  /// to '50'.
  final pulumi.Input<int> rotationWindowPercentage;
  /// If set to true, the trust domain will utilize the GCP-provisioned default CA. A default
  /// CA in the same region as the workload will be selected to issue the certificate. Enabling
  /// this will clear any existing 'ca_pools' configuration to provision the certificates.
  ///
  /// &gt; **Note** This field is mutually exclusive with 'ca_pools'. If this flag is enabled,
  /// certificates will be automatically provisioned from the default shared CAs. This flag should
  /// not be set if you want to use your own CA pools to provision the certificates.
  final pulumi.Input<bool> useDefaultSharedCa;

  /// Creates a new [GetWorkloadIdentityPoolInlineCertificateIssuanceConfig].
  /// [caPools] A required mapping of a cloud region to the CA pool resource located in that region used
  /// [keyAlgorithm] Key algorithm to use when generating the key pair. This key pair will be used to create
  /// [lifetime] Lifetime of the workload certificates issued by the CA pool in seconds. Must be between
  /// [rotationWindowPercentage] Rotation window percentage indicating when certificate rotation should be initiated based
  /// [useDefaultSharedCa] If set to true, the trust domain will utilize the GCP-provisioned default CA. A default
  const GetWorkloadIdentityPoolInlineCertificateIssuanceConfig({
    required this.caPools,
    required this.keyAlgorithm,
    required this.lifetime,
    required this.rotationWindowPercentage,
    required this.useDefaultSharedCa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPools': caPools,
      'keyAlgorithm': keyAlgorithm,
      'lifetime': lifetime,
      'rotationWindowPercentage': rotationWindowPercentage,
      'useDefaultSharedCa': useDefaultSharedCa,
    };
  }

  factory GetWorkloadIdentityPoolInlineCertificateIssuanceConfig.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolInlineCertificateIssuanceConfig(
      caPools: pulumi.Input.fromValue((map['caPools'] as Map).cast<String, String>()),
      keyAlgorithm: pulumi.Input.fromValue(map['keyAlgorithm'] as String),
      lifetime: pulumi.Input.fromValue(map['lifetime'] as String),
      rotationWindowPercentage: pulumi.Input.fromValue((map['rotationWindowPercentage'] as num).toInt()),
      useDefaultSharedCa: pulumi.Input.fromValue(map['useDefaultSharedCa'] as bool),
    );
  }
}
