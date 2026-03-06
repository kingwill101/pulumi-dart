// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Provider resources.
class ProviderState {
  /// The URI of the Attestation Service.
  final pulumi.Input<String>? attestationUri;
  /// The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Attestation Provider. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  final pulumi.Input<String>? openEnclavePolicyBase64;
  /// A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If the `policy_signing_certificate_data` argument contains more than one valid X.509 certificate only the first certificate will be used.
  final pulumi.Input<String>? policySigningCertificateData;
  /// The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  ///
  /// &gt; **Note:** [More information on the JWT Policies can be found in this article on `learn.microsoft.com`](https://learn.microsoft.com/azure/attestation/author-sign-policy).
  final pulumi.Input<String>? sevSnpPolicyBase64;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  final pulumi.Input<String>? sgxEnclavePolicyBase64;
  /// A mapping of tags which should be assigned to the Attestation Provider.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  final pulumi.Input<String>? tpmPolicyBase64;
  /// Trust model used for the Attestation Service.
  final pulumi.Input<String>? trustModel;

  /// Creates a new [ProviderState].
  /// [attestationUri] The URI of the Attestation Service.
  /// [location] The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Attestation Provider. Changing this forces a new resource to be created.
  /// [openEnclavePolicyBase64] Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  /// [policySigningCertificateData] A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created.
  /// [sevSnpPolicyBase64] Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  /// [sgxEnclavePolicyBase64] Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  /// [tags] A mapping of tags which should be assigned to the Attestation Provider.
  /// [tpmPolicyBase64] Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  /// [trustModel] Trust model used for the Attestation Service.
  const ProviderState({
    this.attestationUri,
    this.location,
    this.name,
    this.openEnclavePolicyBase64,
    this.policySigningCertificateData,
    this.resourceGroupName,
    this.sevSnpPolicyBase64,
    this.sgxEnclavePolicyBase64,
    this.tags,
    this.tpmPolicyBase64,
    this.trustModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationUri': ?attestationUri,
      'location': ?location,
      'name': ?name,
      'openEnclavePolicyBase64': ?openEnclavePolicyBase64,
      'policySigningCertificateData': ?policySigningCertificateData,
      'resourceGroupName': ?resourceGroupName,
      'sevSnpPolicyBase64': ?sevSnpPolicyBase64,
      'sgxEnclavePolicyBase64': ?sgxEnclavePolicyBase64,
      'tags': ?tags,
      'tpmPolicyBase64': ?tpmPolicyBase64,
      'trustModel': ?trustModel,
    };
  }

  factory ProviderState.fromMap(Map<String, dynamic> map) {
    return ProviderState(
      attestationUri: (() { final guardedValue = map['attestationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openEnclavePolicyBase64: (() { final guardedValue = map['openEnclavePolicyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySigningCertificateData: (() { final guardedValue = map['policySigningCertificateData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sevSnpPolicyBase64: (() { final guardedValue = map['sevSnpPolicyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sgxEnclavePolicyBase64: (() { final guardedValue = map['sgxEnclavePolicyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tpmPolicyBase64: (() { final guardedValue = map['tpmPolicyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustModel: (() { final guardedValue = map['trustModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

