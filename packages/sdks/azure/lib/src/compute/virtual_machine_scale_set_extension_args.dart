// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_extension_protected_settings_from_key_vault.dart';

/// {@template pulumi_compute_virtual_machine_scale_set_extension_virtual_machine_scale_set_extension_args_doc}
/// The set of arguments for VirtualMachineScaleSetExtension.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_scale_set_extension_virtual_machine_scale_set_extension_args_doc}
class VirtualMachineScaleSetExtensionArgs {
  /// Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// > **Note:** Operational failures such as not connecting to the VM will not be suppressed regardless of the `failure_suppression_enabled` value.
  final pulumi.Input<bool>? failureSuppressionEnabled;
  /// A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  ///
  /// > **Note:** Keys within the `protected_settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final pulumi.Input<String>? protectedSettings;
  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// > **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  final pulumi.Input<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault>? protectedSettingsFromKeyVault;
  /// An ordered list of Extension names which this should be provisioned after.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// Specifies the Publisher of the Extension. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;
  /// A JSON String which specifies Settings for the Extension.
  ///
  /// > **Note:** Keys within the `settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final pulumi.Input<String>? settings;
  /// Specifies the Type of the Extension. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  ///
  /// > **Note:** The `Publisher` and `Type` of Virtual Machine Scale Set Extensions can be found using the Azure CLI, via:
  ///
  /// ```shell
  /// az vmss extension image list --location westus -o table
  /// ```
  final pulumi.Input<String> typeHandlerVersion;
  /// The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This should be the ID from the `azure.compute.LinuxVirtualMachineScaleSet` or `azure.compute.WindowsVirtualMachineScaleSet` resource - when using the older `azure.compute.ScaleSet` resource extensions should instead be defined inline.
  final pulumi.Input<String> virtualMachineScaleSetId;

  /// Creates a new [VirtualMachineScaleSetExtensionArgs].
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
  VirtualMachineScaleSetExtensionArgs({
    pulumi.Output<bool>? autoUpgradeMinorVersion,
    pulumi.Output<bool>? automaticUpgradeEnabled,
    pulumi.Output<bool>? failureSuppressionEnabled,
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectedSettings,
    pulumi.Output<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault>? protectedSettingsFromKeyVault,
    pulumi.Output<List<String>>? provisionAfterExtensions,
    required pulumi.Output<String> publisher,
    pulumi.Output<String>? settings,
    required pulumi.Output<String> type,
    required pulumi.Output<String> typeHandlerVersion,
    required pulumi.Output<String> virtualMachineScaleSetId,
  }) :
      autoUpgradeMinorVersion = pulumi.Input.asOptionalInput<bool>(autoUpgradeMinorVersion),
      automaticUpgradeEnabled = pulumi.Input.asOptionalInput<bool>(automaticUpgradeEnabled),
      failureSuppressionEnabled = pulumi.Input.asOptionalInput<bool>(failureSuppressionEnabled),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectedSettings = pulumi.Input.asOptionalInput<String>(protectedSettings),
      protectedSettingsFromKeyVault = pulumi.Input.asOptionalInput<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault>(protectedSettingsFromKeyVault),
      provisionAfterExtensions = pulumi.Input.asOptionalInput<List<String>>(provisionAfterExtensions),
      publisher = pulumi.Input.asInput<String>(publisher),
      settings = pulumi.Input.asOptionalInput<String>(settings),
      type = pulumi.Input.asInput<String>(type),
      typeHandlerVersion = pulumi.Input.asInput<String>(typeHandlerVersion),
      virtualMachineScaleSetId = pulumi.Input.asInput<String>(virtualMachineScaleSetId);

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
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
      'virtualMachineScaleSetId': virtualMachineScaleSetId,
    };
  }

  factory VirtualMachineScaleSetExtensionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtensionArgs(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<bool>(map['autoUpgradeMinorVersion'] as bool),
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : pulumi.Output.create<bool>(map['automaticUpgradeEnabled'] as bool),
      failureSuppressionEnabled: map['failureSuppressionEnabled'] == null ? null : pulumi.Output.create<bool>(map['failureSuppressionEnabled'] as bool),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectedSettings: map['protectedSettings'] == null ? null : pulumi.Output.create<String>(map['protectedSettings'] as String),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : pulumi.Output.create<VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault>(VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>())),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : pulumi.Output.create<List<String>>((map['provisionAfterExtensions'] as List).cast<String>()),
      publisher: pulumi.Output.create<String>(map['publisher'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<String>(map['settings'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
      typeHandlerVersion: pulumi.Output.create<String>(map['typeHandlerVersion'] as String),
      virtualMachineScaleSetId: pulumi.Output.create<String>(map['virtualMachineScaleSetId'] as String),
    );
  }
}

