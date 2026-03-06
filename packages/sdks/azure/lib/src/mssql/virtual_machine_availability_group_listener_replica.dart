// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineAvailabilityGroupListenerReplica {
  /// The replica commit mode for the availability group. Possible values are `Synchronous_Commit` and `Asynchronous_Commit`. Changing this forces a new resource to be created.
  final pulumi.Input<String> commit;
  /// The replica failover mode for the availability group. Possible values are `Manual` and `Automatic`. Changing this forces a new resource to be created.
  final pulumi.Input<String> failoverMode;
  /// The replica readable secondary mode for the availability group. Possible values are `No`, `Read_Only` and `All`. Changing this forces a new resource to be created.
  final pulumi.Input<String> readableSecondary;
  /// The replica role for the availability group. Possible values are `Primary` and `Secondary`. Changing this forces a new resource to be created.
  final pulumi.Input<String> role;
  /// The ID of the SQL Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> sqlVirtualMachineId;

  /// Creates a new [VirtualMachineAvailabilityGroupListenerReplica].
  /// [commit] The replica commit mode for the availability group. Possible values are `Synchronous_Commit` and `Asynchronous_Commit`. Changing this forces a new resource to be created.
  /// [failoverMode] The replica failover mode for the availability group. Possible values are `Manual` and `Automatic`. Changing this forces a new resource to be created.
  /// [readableSecondary] The replica readable secondary mode for the availability group. Possible values are `No`, `Read_Only` and `All`. Changing this forces a new resource to be created.
  /// [role] The replica role for the availability group. Possible values are `Primary` and `Secondary`. Changing this forces a new resource to be created.
  /// [sqlVirtualMachineId] The ID of the SQL Virtual Machine. Changing this forces a new resource to be created.
  const VirtualMachineAvailabilityGroupListenerReplica({
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
      commit: pulumi.Input.fromValue(map['commit'] as String),
      failoverMode: pulumi.Input.fromValue(map['failoverMode'] as String),
      readableSecondary: pulumi.Input.fromValue(map['readableSecondary'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      sqlVirtualMachineId: pulumi.Input.fromValue(map['sqlVirtualMachineId'] as String),
    );
  }
}

