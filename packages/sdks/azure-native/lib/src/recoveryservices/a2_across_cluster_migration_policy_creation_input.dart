// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A Cross-Cluster Migration Policy creation input.
class A2ACrossClusterMigrationPolicyCreationInput {
  /// The class type.
  /// Expected value is 'A2ACrossClusterMigration'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [A2ACrossClusterMigrationPolicyCreationInput].
  /// [instanceType] The class type.
  const A2ACrossClusterMigrationPolicyCreationInput({
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
    };
  }

  factory A2ACrossClusterMigrationPolicyCreationInput.fromMap(Map<String, dynamic> map) {
    return A2ACrossClusterMigrationPolicyCreationInput(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}

