// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Availability group replica configuration.
class AgReplicaResponse {
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

  /// Creates a new [AgReplicaResponse].
  /// [commit] Replica commit mode in availability group.
  /// [failover] Replica failover mode in availability group.
  /// [readableSecondary] Replica readable secondary mode in availability group.
  /// [role] Replica Role in availability group.
  /// [sqlVirtualMachineInstanceId] Sql VirtualMachine Instance Id.
  const AgReplicaResponse({
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

  factory AgReplicaResponse.fromMap(Map<String, dynamic> map) {
    return AgReplicaResponse(
      commit: (() { final guardedValue = map['commit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failover: (() { final guardedValue = map['failover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readableSecondary: (() { final guardedValue = map['readableSecondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlVirtualMachineInstanceId: (() { final guardedValue = map['sqlVirtualMachineInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
