// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_extension_protected_settings_from_key_vault.dart';

/// Input properties used for looking up and filtering VirtualMachineScaleSetExtension resources.
class VirtualMachineScaleSetExtensionState {
  /// Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// &gt; **Note:** Operational failures such as not connecting to the VM will not be suppressed regardless of the `failure_suppression_enabled` value.
  final pulumi.Input<bool>? failureSuppressionEnabled;
  /// A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  ///
  /// &gt; **Note:** Keys within the `protected_settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final pulumi.Input<String>? protectedSettings;
  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// &gt; **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  final pulumi.Input<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault>? protectedSettingsFromKeyVault;
  /// An ordered list of Extension names which this should be provisioned after.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// Specifies the Publisher of the Extension. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publisher;
  /// A JSON String which specifies Settings for the Extension.
  ///
  /// &gt; **Note:** Keys within the `settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final pulumi.Input<String>? settings;
  /// Specifies the Type of the Extension. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  ///
  /// &gt; **Note:** The `Publisher` and `Type` of Virtual Machine Scale Set Extensions can be found using the Azure CLI, via:
  ///
  /// ```shell
  /// az vmss extension image list --location westus -o table
  /// ```
  final pulumi.Input<String>? typeHandlerVersion;
  /// The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This should be the ID from the `azure.compute.LinuxVirtualMachineScaleSet` or `azure.compute.WindowsVirtualMachineScaleSet` resource - when using the older `azure.compute.ScaleSet` resource extensions should instead be defined inline.
  final pulumi.Input<String>? virtualMachineScaleSetId;

  /// Creates a new [VirtualMachineScaleSetExtensionState].
  /// [autoUpgradeMinorVersion] Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  /// [automaticUpgradeEnabled] Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  /// [failureSuppressionEnabled] Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`.
  /// [forceUpdateTag] A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  /// [name] The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created.
  /// [protectedSettings] A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  /// [protectedSettingsFromKeyVault] A `protected_settings_from_key_vault` block as defined below.
  /// [provisionAfterExtensions] An ordered list of Extension names which this should be provisioned after.
  /// [publisher] Specifies the Publisher of the Extension. Changing this forces a new resource to be created.
  /// [settings] A JSON String which specifies Settings for the Extension.
  /// [type] Specifies the Type of the Extension. Changing this forces a new resource to be created.
  /// [typeHandlerVersion] Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  /// [virtualMachineScaleSetId] The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  const VirtualMachineScaleSetExtensionState({
    this.autoUpgradeMinorVersion,
    this.automaticUpgradeEnabled,
    this.failureSuppressionEnabled,
    this.forceUpdateTag,
    this.name,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    this.provisionAfterExtensions,
    this.publisher,
    this.settings,
    this.type,
    this.typeHandlerVersion,
    this.virtualMachineScaleSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'failureSuppressionEnabled': ?failureSuppressionEnabled,
      'forceUpdateTag': ?forceUpdateTag,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': ?publisher,
      'settings': ?settings,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
      'virtualMachineScaleSetId': ?virtualMachineScaleSetId,
    };
  }

  factory VirtualMachineScaleSetExtensionState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtensionState(
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticUpgradeEnabled: (() { final guardedValue = map['automaticUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureSuppressionEnabled: (() { final guardedValue = map['failureSuppressionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedSettingsFromKeyVault: (() { final guardedValue = map['protectedSettingsFromKeyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionAfterExtensions: (() { final guardedValue = map['provisionAfterExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineScaleSetId: (() { final guardedValue = map['virtualMachineScaleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

