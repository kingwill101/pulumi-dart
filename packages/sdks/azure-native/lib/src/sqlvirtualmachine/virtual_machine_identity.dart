// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Machine Identity details used for Sql IaaS extension configurations.
class VirtualMachineIdentity {
  /// ARM Resource Id of the identity. Only required when UserAssigned identity is selected.
  final pulumi.Input<String?>? resourceId;
  /// Identity type of the virtual machine. Specify None to opt-out of Managed Identities.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [VirtualMachineIdentity].
  /// [resourceId] ARM Resource Id of the identity. Only required when UserAssigned identity is selected.
  /// [type] Identity type of the virtual machine. Specify None to opt-out of Managed Identities.
  const VirtualMachineIdentity({
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
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
