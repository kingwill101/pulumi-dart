// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Full view of the custom domain suffix configuration for ASEv3.
class CustomDnsSuffixConfiguration {
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  final pulumi.Input<String>? certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  final pulumi.Input<String>? dnsSuffix;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  final pulumi.Input<String>? keyVaultReferenceIdentity;
  /// Kind of resource.
  final pulumi.Input<String>? kind;

  /// Creates a new [CustomDnsSuffixConfiguration].
  /// [certificateUrl] The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  /// [dnsSuffix] The default custom domain suffix to use for all sites deployed on the ASE.
  /// [keyVaultReferenceIdentity] The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  /// [kind] Kind of resource.
  CustomDnsSuffixConfiguration({
    this.certificateUrl,
    this.dnsSuffix,
    this.keyVaultReferenceIdentity,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'dnsSuffix': ?dnsSuffix,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'kind': ?kind,
    };
  }

  factory CustomDnsSuffixConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomDnsSuffixConfiguration(
      certificateUrl: map['certificateUrl'] == null ? null : (map['certificateUrl'] as String).input(),
      dnsSuffix: map['dnsSuffix'] == null ? null : (map['dnsSuffix'] as String).input(),
      keyVaultReferenceIdentity: map['keyVaultReferenceIdentity'] == null ? null : (map['keyVaultReferenceIdentity'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
    );
  }
}

