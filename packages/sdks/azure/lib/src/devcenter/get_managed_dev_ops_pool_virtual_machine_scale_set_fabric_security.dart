// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_virtual_machine_scale_set_fabric_security_key_vault_management.dart';

class GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity {
  /// Whether the agent runs in interactive mode.
  final pulumi.Input<bool> interactiveLogonEnabled;
  /// A `keyVaultManagement` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement>> keyVaultManagements;

  /// Creates a new [GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity].
  /// [interactiveLogonEnabled] Whether the agent runs in interactive mode.
  /// [keyVaultManagements] A `keyVaultManagement` block as defined below.
  const GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity({
    required this.interactiveLogonEnabled,
    required this.keyVaultManagements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactiveLogonEnabled': interactiveLogonEnabled,
      'keyVaultManagements': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement>, List<Map<String, dynamic>>>(keyVaultManagements, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity(
      interactiveLogonEnabled: pulumi.Input.fromValue(map['interactiveLogonEnabled'] as bool),
      keyVaultManagements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement>(map['keyVaultManagements']!, (value) => GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
