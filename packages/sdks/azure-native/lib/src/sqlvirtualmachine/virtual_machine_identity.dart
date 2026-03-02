// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Machine Identity details used for Sql IaaS extension configurations.
class VirtualMachineIdentity {
  /// ARM Resource Id of the identity. Only required when UserAssigned identity is selected.
  final pulumi.Input<String>? resourceId;
  /// Identity type of the virtual machine. Specify None to opt-out of Managed Identities.
  final pulumi.Input<String>? type;

  /// Creates a new [VirtualMachineIdentity].
  /// [resourceId] ARM Resource Id of the identity. Only required when UserAssigned identity is selected.
  /// [type] Identity type of the virtual machine. Specify None to opt-out of Managed Identities.
  VirtualMachineIdentity({
    this.resourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'type': ?type,
    };
  }

  factory VirtualMachineIdentity.fromMap(Map<String, dynamic> map) {
    return VirtualMachineIdentity(
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

