// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable protection input properties.
class EnableProtectionInputProperties {
  /// The Policy Id.
  final pulumi.Input<String?>? policyId;
  /// The protectable item Id.
  final pulumi.Input<String?>? protectableItemId;
  /// The ReplicationProviderInput. For HyperVReplicaAzure provider, it will be AzureEnableProtectionInput object. For San provider, it will be SanEnableProtectionInput object. For HyperVReplicaAzure provider, it can be null.
  final pulumi.Input<dynamic>? providerSpecificDetails;

  /// Creates a new [EnableProtectionInputProperties].
  /// [policyId] The Policy Id.
  /// [protectableItemId] The protectable item Id.
  /// [providerSpecificDetails] The ReplicationProviderInput. For HyperVReplicaAzure provider, it will be AzureEnableProtectionInput object. For San provider, it will be SanEnableProtectionInput object. For HyperVReplicaAzure provider, it can be null.
  const EnableProtectionInputProperties({
    this.policyId,
    this.protectableItemId,
    this.providerSpecificDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'protectableItemId': ?protectableItemId,
      'providerSpecificDetails': ?providerSpecificDetails,
    };
  }

  factory EnableProtectionInputProperties.fromMap(Map<String, dynamic> map) {
    return EnableProtectionInputProperties(
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableItemId: (() { final guardedValue = map['protectableItemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSpecificDetails: (() { final guardedValue = map['providerSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
