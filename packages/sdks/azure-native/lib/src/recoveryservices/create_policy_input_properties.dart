// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_across_cluster_migration_policy_creation_input.dart';

/// Policy creation properties.
class CreatePolicyInputProperties {
  /// The ReplicationProviderSettings.
  final pulumi.Input<A2ACrossClusterMigrationPolicyCreationInput>? providerSpecificInput;

  /// Creates a new [CreatePolicyInputProperties].
  /// [providerSpecificInput] The ReplicationProviderSettings.
  CreatePolicyInputProperties({
    this.providerSpecificInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerSpecificInput': ?pulumi.Input.mapOptionalInputValue<A2ACrossClusterMigrationPolicyCreationInput, Map<String, dynamic>>(providerSpecificInput, (value) => value.toMap()),
    };
  }

  factory CreatePolicyInputProperties.fromMap(Map<String, dynamic> map) {
    return CreatePolicyInputProperties(
      providerSpecificInput: map['providerSpecificInput'] == null ? null : (A2ACrossClusterMigrationPolicyCreationInput.fromMap((map['providerSpecificInput'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

