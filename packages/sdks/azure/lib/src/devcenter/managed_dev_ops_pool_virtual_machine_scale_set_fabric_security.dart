// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_virtual_machine_scale_set_fabric_security_key_vault_management.dart';

class ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity {
  /// Specifies whether the agent should run in interactive mode. Defaults to `false`.
  final pulumi.Input<bool>? interactiveLogonEnabled;
  /// A `keyVaultManagement` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement>? keyVaultManagement;

  /// Creates a new [ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity].
  /// [interactiveLogonEnabled] Specifies whether the agent should run in interactive mode. Defaults to `false`.
  /// [keyVaultManagement] A `keyVaultManagement` block as defined below.
  const ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity({
    this.interactiveLogonEnabled,
    this.keyVaultManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactiveLogonEnabled': ?interactiveLogonEnabled,
      'keyVaultManagement': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement, Map<String, dynamic>>(keyVaultManagement, (value) => value.toMap()),
    };
  }

  factory ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity(
      interactiveLogonEnabled: (() { final guardedValue = map['interactiveLogonEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultManagement: (() { final guardedValue = map['keyVaultManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
