// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_attestation_provider_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_attestation_provider_provider_args_doc}
class ProviderArgs {
  /// The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Attestation Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  final pulumi.Input<String>? openEnclavePolicyBase64;
  /// A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created.
  ///
  /// > **Note:** If the `policy_signing_certificate_data` argument contains more than one valid X.509 certificate only the first certificate will be used.
  final pulumi.Input<String>? policySigningCertificateData;
  /// The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  ///
  /// > **Note:** [More information on the JWT Policies can be found in this article on `learn.microsoft.com`](https://learn.microsoft.com/azure/attestation/author-sign-policy).
  final pulumi.Input<String>? sevSnpPolicyBase64;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  final pulumi.Input<String>? sgxEnclavePolicyBase64;
  /// A mapping of tags which should be assigned to the Attestation Provider.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  final pulumi.Input<String>? tpmPolicyBase64;

  /// Creates a new [ProviderArgs].
  /// [location] The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Attestation Provider. Changing this forces a new resource to be created.
  /// [openEnclavePolicyBase64] Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  /// [policySigningCertificateData] A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created.
  /// [sevSnpPolicyBase64] Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  /// [sgxEnclavePolicyBase64] Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  /// [tags] A mapping of tags which should be assigned to the Attestation Provider.
  /// [tpmPolicyBase64] Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  ProviderArgs({
    this.location,
    this.name,
    this.openEnclavePolicyBase64,
    this.policySigningCertificateData,
    required this.resourceGroupName,
    this.sevSnpPolicyBase64,
    this.sgxEnclavePolicyBase64,
    this.tags,
    this.tpmPolicyBase64,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'openEnclavePolicyBase64': ?openEnclavePolicyBase64,
      'policySigningCertificateData': ?policySigningCertificateData,
      'resourceGroupName': resourceGroupName,
      'sevSnpPolicyBase64': ?sevSnpPolicyBase64,
      'sgxEnclavePolicyBase64': ?sgxEnclavePolicyBase64,
      'tags': ?tags,
      'tpmPolicyBase64': ?tpmPolicyBase64,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      openEnclavePolicyBase64: map['openEnclavePolicyBase64'] == null ? null : (map['openEnclavePolicyBase64'] as String).input(),
      policySigningCertificateData: map['policySigningCertificateData'] == null ? null : (map['policySigningCertificateData'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sevSnpPolicyBase64: map['sevSnpPolicyBase64'] == null ? null : (map['sevSnpPolicyBase64'] as String).input(),
      sgxEnclavePolicyBase64: map['sgxEnclavePolicyBase64'] == null ? null : (map['sgxEnclavePolicyBase64'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tpmPolicyBase64: map['tpmPolicyBase64'] == null ? null : (map['tpmPolicyBase64'] as String).input(),
    );
  }
}

