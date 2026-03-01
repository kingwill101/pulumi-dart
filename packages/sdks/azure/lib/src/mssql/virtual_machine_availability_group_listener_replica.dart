// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineAvailabilityGroupListenerReplica {
  /// The replica commit mode for the availability group. Possible values are `Synchronous_Commit` and `Asynchronous_Commit`. Changing this forces a new resource to be created.
  final String commit;
  /// The replica failover mode for the availability group. Possible values are `Manual` and `Automatic`. Changing this forces a new resource to be created.
  final String failoverMode;
  /// The replica readable secondary mode for the availability group. Possible values are `No`, `Read_Only` and `All`. Changing this forces a new resource to be created.
  final String readableSecondary;
  /// The replica role for the availability group. Possible values are `Primary` and `Secondary`. Changing this forces a new resource to be created.
  final String role;
  /// The ID of the SQL Virtual Machine. Changing this forces a new resource to be created.
  final String sqlVirtualMachineId;

  /// Creates a new [VirtualMachineAvailabilityGroupListenerReplica].
  /// [commit] The replica commit mode for the availability group. Possible values are `Synchronous_Commit` and `Asynchronous_Commit`. Changing this forces a new resource to be created.
  /// [failoverMode] The replica failover mode for the availability group. Possible values are `Manual` and `Automatic`. Changing this forces a new resource to be created.
  /// [readableSecondary] The replica readable secondary mode for the availability group. Possible values are `No`, `Read_Only` and `All`. Changing this forces a new resource to be created.
  /// [role] The replica role for the availability group. Possible values are `Primary` and `Secondary`. Changing this forces a new resource to be created.
  /// [sqlVirtualMachineId] The ID of the SQL Virtual Machine. Changing this forces a new resource to be created.
  VirtualMachineAvailabilityGroupListenerReplica({
    required this.commit,
    required this.failoverMode,
    required this.readableSecondary,
    required this.role,
    required this.sqlVirtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commit': commit,
      'failoverMode': failoverMode,
      'readableSecondary': readableSecondary,
      'role': role,
      'sqlVirtualMachineId': sqlVirtualMachineId,
    };
  }

  factory VirtualMachineAvailabilityGroupListenerReplica.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAvailabilityGroupListenerReplica(
      commit: map['commit'] as String,
      failoverMode: map['failoverMode'] as String,
      readableSecondary: map['readableSecondary'] as String,
      role: map['role'] as String,
      sqlVirtualMachineId: map['sqlVirtualMachineId'] as String,
    );
  }
}

