// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Availability group replica configuration.
class AgReplica {
  /// Replica commit mode in availability group.
  final pulumi.Input<dynamic>? commit;
  /// Replica failover mode in availability group.
  final pulumi.Input<dynamic>? failover;
  /// Replica readable secondary mode in availability group.
  final pulumi.Input<dynamic>? readableSecondary;
  /// Replica Role in availability group.
  final pulumi.Input<dynamic>? role;
  /// Sql VirtualMachine Instance Id.
  final pulumi.Input<String?>? sqlVirtualMachineInstanceId;

  /// Creates a new [AgReplica].
  /// [commit] Replica commit mode in availability group.
  /// [failover] Replica failover mode in availability group.
  /// [readableSecondary] Replica readable secondary mode in availability group.
  /// [role] Replica Role in availability group.
  /// [sqlVirtualMachineInstanceId] Sql VirtualMachine Instance Id.
  const AgReplica({
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
      commit: (() { final guardedValue = map['commit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      failover: (() { final guardedValue = map['failover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      readableSecondary: (() { final guardedValue = map['readableSecondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sqlVirtualMachineInstanceId: (() { final guardedValue = map['sqlVirtualMachineInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
