// ignore_for_file: unused_element, unnecessary_cast

import 'a2_across_cluster_migration_policy_creation_input.dart';

/// Policy creation properties.
class CreatePolicyInputProperties {
  /// The ReplicationProviderSettings.
  final A2ACrossClusterMigrationPolicyCreationInput? providerSpecificInput;

  /// Creates a new [CreatePolicyInputProperties].
  /// [providerSpecificInput] The ReplicationProviderSettings.
  CreatePolicyInputProperties({
    this.providerSpecificInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerSpecificInput': ?providerSpecificInput == null ? null : providerSpecificInput!.toMap(),
    };
  }

  factory CreatePolicyInputProperties.fromMap(Map<String, dynamic> map) {
    return CreatePolicyInputProperties(
      providerSpecificInput: map['providerSpecificInput'] == null ? null : A2ACrossClusterMigrationPolicyCreationInput.fromMap((map['providerSpecificInput'] as Map).cast<String, dynamic>()),
    );
  }
}

