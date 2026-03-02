// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_across_cluster_migration_enable_protection_input.dart';

/// Enable protection input properties.
class EnableProtectionInputProperties {
  /// The Policy Id.
  final pulumi.Input<String>? policyId;
  /// The protectable item Id.
  final pulumi.Input<String>? protectableItemId;
  /// The ReplicationProviderInput. For HyperVReplicaAzure provider, it will be AzureEnableProtectionInput object. For San provider, it will be SanEnableProtectionInput object. For HyperVReplicaAzure provider, it can be null.
  final pulumi.Input<A2ACrossClusterMigrationEnableProtectionInput>? providerSpecificDetails;

  /// Creates a new [EnableProtectionInputProperties].
  /// [policyId] The Policy Id.
  /// [protectableItemId] The protectable item Id.
  /// [providerSpecificDetails] The ReplicationProviderInput. For HyperVReplicaAzure provider, it will be AzureEnableProtectionInput object. For San provider, it will be SanEnableProtectionInput object. For HyperVReplicaAzure provider, it can be null.
  EnableProtectionInputProperties({
    this.policyId,
    this.protectableItemId,
    this.providerSpecificDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'protectableItemId': ?protectableItemId,
      'providerSpecificDetails': ?pulumi.Input.mapOptionalInputValue<A2ACrossClusterMigrationEnableProtectionInput, Map<String, dynamic>>(providerSpecificDetails, (value) => value.toMap()),
    };
  }

  factory EnableProtectionInputProperties.fromMap(Map<String, dynamic> map) {
    return EnableProtectionInputProperties(
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      protectableItemId: map['protectableItemId'] == null ? null : (map['protectableItemId'] as String).input(),
      providerSpecificDetails: map['providerSpecificDetails'] == null ? null : (A2ACrossClusterMigrationEnableProtectionInput.fromMap((map['providerSpecificDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

