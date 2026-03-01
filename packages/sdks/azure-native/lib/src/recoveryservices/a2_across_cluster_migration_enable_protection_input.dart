// ignore_for_file: unused_element, unnecessary_cast


/// A2A Cross-Cluster Migration enable protection input.
class A2ACrossClusterMigrationEnableProtectionInput {
  /// The fabric specific object Id of the virtual machine.
  final String? fabricObjectId;
  /// The class type.
  /// Expected value is 'A2ACrossClusterMigration'.
  final String instanceType;
  /// The recovery container Id.
  final String? recoveryContainerId;

  /// Creates a new [A2ACrossClusterMigrationEnableProtectionInput].
  /// [fabricObjectId] The fabric specific object Id of the virtual machine.
  /// [instanceType] The class type.
  /// [recoveryContainerId] The recovery container Id.
  A2ACrossClusterMigrationEnableProtectionInput({
    this.fabricObjectId,
    required this.instanceType,
    this.recoveryContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricObjectId': ?fabricObjectId,
      'instanceType': instanceType,
      'recoveryContainerId': ?recoveryContainerId,
    };
  }

  factory A2ACrossClusterMigrationEnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return A2ACrossClusterMigrationEnableProtectionInput(
      fabricObjectId: map['fabricObjectId'] == null ? null : map['fabricObjectId'] as String,
      instanceType: map['instanceType'] as String,
      recoveryContainerId: map['recoveryContainerId'] == null ? null : map['recoveryContainerId'] as String,
    );
  }
}

