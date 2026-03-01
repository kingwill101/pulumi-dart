// ignore_for_file: unused_element, unnecessary_cast


/// Virtual Machine Identity details used for Sql IaaS extension configurations.
class VirtualMachineIdentityResponse {
  /// ARM Resource Id of the identity. Only required when UserAssigned identity is selected.
  final String? resourceId;
  /// Identity type of the virtual machine. Specify None to opt-out of Managed Identities.
  final String? type;

  /// Creates a new [VirtualMachineIdentityResponse].
  /// [resourceId] ARM Resource Id of the identity. Only required when UserAssigned identity is selected.
  /// [type] Identity type of the virtual machine. Specify None to opt-out of Managed Identities.
  VirtualMachineIdentityResponse({
    this.resourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'type': ?type,
    };
  }

  factory VirtualMachineIdentityResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineIdentityResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

