// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Availability group replica configuration.
class AgReplica {
  /// Replica commit mode in availability group.
  final pulumi.Input<String>? commit;
  /// Replica failover mode in availability group.
  final pulumi.Input<String>? failover;
  /// Replica readable secondary mode in availability group.
  final pulumi.Input<String>? readableSecondary;
  /// Replica Role in availability group.
  final pulumi.Input<String>? role;
  /// Sql VirtualMachine Instance Id.
  final pulumi.Input<String>? sqlVirtualMachineInstanceId;

  /// Creates a new [AgReplica].
  /// [commit] Replica commit mode in availability group.
  /// [failover] Replica failover mode in availability group.
  /// [readableSecondary] Replica readable secondary mode in availability group.
  /// [role] Replica Role in availability group.
  /// [sqlVirtualMachineInstanceId] Sql VirtualMachine Instance Id.
  AgReplica({
    this.commit,
    this.failover,
    this.readableSecondary,
    this.role,
    this.sqlVirtualMachineInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commit': ?commit,
      'failover': ?failover,
      'readableSecondary': ?readableSecondary,
      'role': ?role,
      'sqlVirtualMachineInstanceId': ?sqlVirtualMachineInstanceId,
    };
  }

  factory AgReplica.fromMap(Map<String, dynamic> map) {
    return AgReplica(
      commit: map['commit'] == null ? null : (map['commit']! as String).input(),
      failover: map['failover'] == null ? null : (map['failover']! as String).input(),
      readableSecondary: map['readableSecondary'] == null ? null : (map['readableSecondary']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      sqlVirtualMachineInstanceId: map['sqlVirtualMachineInstanceId'] == null ? null : (map['sqlVirtualMachineInstanceId']! as String).input(),
    );
  }
}

