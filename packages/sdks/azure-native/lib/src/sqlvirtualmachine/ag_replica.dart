// ignore_for_file: unused_element, unnecessary_cast


/// Availability group replica configuration.
class AgReplica {
  /// Replica commit mode in availability group.
  final String? commit;
  /// Replica failover mode in availability group.
  final String? failover;
  /// Replica readable secondary mode in availability group.
  final String? readableSecondary;
  /// Replica Role in availability group.
  final String? role;
  /// Sql VirtualMachine Instance Id.
  final String? sqlVirtualMachineInstanceId;

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
      commit: map['commit'] == null ? null : map['commit'] as String,
      failover: map['failover'] == null ? null : map['failover'] as String,
      readableSecondary: map['readableSecondary'] == null ? null : map['readableSecondary'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      sqlVirtualMachineInstanceId: map['sqlVirtualMachineInstanceId'] == null ? null : map['sqlVirtualMachineInstanceId'] as String,
    );
  }
}

