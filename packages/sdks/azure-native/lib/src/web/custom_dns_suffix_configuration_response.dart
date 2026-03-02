// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Full view of the custom domain suffix configuration for ASEv3.
class CustomDnsSuffixConfigurationResponse {
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  final pulumi.Input<String>? certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  final pulumi.Input<String>? dnsSuffix;
  /// Resource Id.
  final pulumi.Input<String> id;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  final pulumi.Input<String>? keyVaultReferenceIdentity;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Resource Name.
  final pulumi.Input<String> name;
  final pulumi.Input<String> provisioningDetails;
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [CustomDnsSuffixConfigurationResponse].
  /// [certificateUrl] The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  /// [dnsSuffix] The default custom domain suffix to use for all sites deployed on the ASE.
  /// [id] Resource Id.
  /// [keyVaultReferenceIdentity] The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [provisioningDetails] Required.
  /// [provisioningState] Required.
  /// [type] Resource type.
  CustomDnsSuffixConfigurationResponse({
    this.certificateUrl,
    this.dnsSuffix,
    required this.id,
    this.keyVaultReferenceIdentity,
    this.kind,
    required this.name,
    required this.provisioningDetails,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'dnsSuffix': ?dnsSuffix,
      'id': id,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'kind': ?kind,
      'name': name,
      'provisioningDetails': provisioningDetails,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory CustomDnsSuffixConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CustomDnsSuffixConfigurationResponse(
      certificateUrl: map['certificateUrl'] == null ? null : (map['certificateUrl']! as String).input(),
      dnsSuffix: map['dnsSuffix'] == null ? null : (map['dnsSuffix']! as String).input(),
      id: (map['id'] as String).input(),
      keyVaultReferenceIdentity: map['keyVaultReferenceIdentity'] == null ? null : (map['keyVaultReferenceIdentity']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      provisioningDetails: (map['provisioningDetails'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

