// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProtectionContainerMappingAutomaticUpdate {
  /// The authentication type used for automation account. Possible values are `RunAsAccount` and `SystemAssignedIdentity`. Defaults to `SystemAssignedIdentity`.
  ///
  /// &gt; **Note:** `RunAsAccount` of `authentication_type` is deprecated and will retire on September 30, 2023. Details could be found [here](https://learn.microsoft.com/en-us/azure/automation/whats-new#support-for-run-as-accounts).
  final pulumi.Input<String>? authenticationType;
  /// The automation account ID which holds the automatic update runbook and authenticates to Azure resources.
  ///
  /// &gt; **Note:** `automation_account_id` is required when `enabled` is specified.
  final pulumi.Input<String>? automationAccountId;
  /// Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to `false`.
  ///
  /// &gt; **Note:** The setting applies to all Azure VMs protected in the same container. For more details see [this document](https://learn.microsoft.com/en-us/azure/site-recovery/azure-to-azure-autoupdate#enable-automatic-updates)
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ProtectionContainerMappingAutomaticUpdate].
  /// [authenticationType] The authentication type used for automation account. Possible values are `RunAsAccount` and `SystemAssignedIdentity`. Defaults to `SystemAssignedIdentity`.
  /// [automationAccountId] The automation account ID which holds the automatic update runbook and authenticates to Azure resources.
  /// [enabled] Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to `false`.
  ProtectionContainerMappingAutomaticUpdate({
    this.authenticationType,
    this.automationAccountId,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'automationAccountId': ?automationAccountId,
      'enabled': ?enabled,
    };
  }

  factory ProtectionContainerMappingAutomaticUpdate.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerMappingAutomaticUpdate(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automationAccountId: (() { final guardedValue = map['automationAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

