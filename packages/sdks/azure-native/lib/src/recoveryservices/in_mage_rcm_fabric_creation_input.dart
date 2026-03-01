// ignore_for_file: unused_element, unnecessary_cast

import 'identity_provider_input.dart';

/// InMageRcm fabric provider specific settings.
class InMageRcmFabricCreationInput {
  /// Gets the class type.
  /// Expected value is 'InMageRcm'.
  final String instanceType;
  /// The ARM Id of the physical site.
  final String physicalSiteId;
  /// The identity provider input for source agent authentication.
  final IdentityProviderInput sourceAgentIdentity;
  /// The ARM Id of the VMware site.
  final String vmwareSiteId;

  /// Creates a new [InMageRcmFabricCreationInput].
  /// [instanceType] Gets the class type.
  /// [physicalSiteId] The ARM Id of the physical site.
  /// [sourceAgentIdentity] The identity provider input for source agent authentication.
  /// [vmwareSiteId] The ARM Id of the VMware site.
  InMageRcmFabricCreationInput({
    required this.instanceType,
    required this.physicalSiteId,
    required this.sourceAgentIdentity,
    required this.vmwareSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'physicalSiteId': physicalSiteId,
      'sourceAgentIdentity': sourceAgentIdentity.toMap(),
      'vmwareSiteId': vmwareSiteId,
    };
  }

  factory InMageRcmFabricCreationInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmFabricCreationInput(
      instanceType: map['instanceType'] as String,
      physicalSiteId: map['physicalSiteId'] as String,
      sourceAgentIdentity: IdentityProviderInput.fromMap((map['sourceAgentIdentity'] as Map).cast<String, dynamic>()),
      vmwareSiteId: map['vmwareSiteId'] as String,
    );
  }
}

