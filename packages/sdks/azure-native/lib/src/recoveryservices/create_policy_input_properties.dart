// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_across_cluster_migration_policy_creation_input.dart';

/// Policy creation properties.
class CreatePolicyInputProperties {
  /// The ReplicationProviderSettings.
  final pulumi.Input<A2ACrossClusterMigrationPolicyCreationInput>? providerSpecificInput;

  /// Creates a new [CreatePolicyInputProperties].
  /// [providerSpecificInput] The ReplicationProviderSettings.
  const CreatePolicyInputProperties({
    this.providerSpecificInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerSpecificInput': ?pulumi.Input.mapOptionalInputValue<A2ACrossClusterMigrationPolicyCreationInput, Map<String, dynamic>>(providerSpecificInput, (value) => value.toMap()),
    };
  }

  factory CreatePolicyInputProperties.fromMap(Map<String, dynamic> map) {
    return CreatePolicyInputProperties(
      providerSpecificInput: (() { final guardedValue = map['providerSpecificInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(A2ACrossClusterMigrationPolicyCreationInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
