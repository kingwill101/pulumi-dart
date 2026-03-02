// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrchestratedVirtualMachineScaleSetIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<String> tenantId;
  /// The Type of IP Tag.
  final pulumi.Input<String> type;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Orchestrated Virtual Machine Scale Set.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Orchestrated Virtual Machine Scale Set.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Orchestrated Virtual Machine Scale Set.
  /// [type] The Type of IP Tag.
  GetOrchestratedVirtualMachineScaleSetIdentity({
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

  factory GetOrchestratedVirtualMachineScaleSetIdentity.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

