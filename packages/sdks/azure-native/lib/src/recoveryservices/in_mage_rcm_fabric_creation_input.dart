// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_input.dart';

/// InMageRcm fabric provider specific settings.
class InMageRcmFabricCreationInput {
  /// Gets the class type.
  /// Expected value is 'InMageRcm'.
  final pulumi.Input<String> instanceType;
  /// The ARM Id of the physical site.
  final pulumi.Input<String> physicalSiteId;
  /// The identity provider input for source agent authentication.
  final pulumi.Input<IdentityProviderInput> sourceAgentIdentity;
  /// The ARM Id of the VMware site.
  final pulumi.Input<String> vmwareSiteId;

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
      'sourceAgentIdentity': pulumi.Input.mapInputValue<IdentityProviderInput, Map<String, dynamic>>(sourceAgentIdentity, (value) => value.toMap()),
      'vmwareSiteId': vmwareSiteId,
    };
  }

  factory InMageRcmFabricCreationInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmFabricCreationInput(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      physicalSiteId: pulumi.Input.fromValue(map['physicalSiteId'] as String),
      sourceAgentIdentity: pulumi.Input.fromValue(IdentityProviderInput.fromMap((map['sourceAgentIdentity']! as Map).cast<String, dynamic>())),
      vmwareSiteId: pulumi.Input.fromValue(map['vmwareSiteId'] as String),
    );
  }
}

