// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetIdentity {
  /// Specifies a list of User Managed Identity IDs to be assigned to this Windows Virtual Machine Scale Set.
  final pulumi.Input<List<String>> identityIds;
  /// The type of Managed Identity that should be configured on this Windows Virtual Machine Scale Set. Only possible value is `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [OrchestratedVirtualMachineScaleSetIdentity].
  /// [identityIds] Specifies a list of User Managed Identity IDs to be assigned to this Windows Virtual Machine Scale Set.
  /// [type] The type of Managed Identity that should be configured on this Windows Virtual Machine Scale Set. Only possible value is `UserAssigned`.
  OrchestratedVirtualMachineScaleSetIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory OrchestratedVirtualMachineScaleSetIdentity.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

