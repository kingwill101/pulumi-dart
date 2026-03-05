// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualMachineScaleSetIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Virtual Machine Scale Set.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Virtual Machine Scale Set.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Virtual Machine Scale Set.
  final pulumi.Input<String> tenantId;
  /// The Type of IP Tag.
  final pulumi.Input<String> type;

  /// Creates a new [GetVirtualMachineScaleSetIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Virtual Machine Scale Set.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Virtual Machine Scale Set.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Virtual Machine Scale Set.
  /// [type] The Type of IP Tag.
  GetVirtualMachineScaleSetIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetVirtualMachineScaleSetIdentity.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

