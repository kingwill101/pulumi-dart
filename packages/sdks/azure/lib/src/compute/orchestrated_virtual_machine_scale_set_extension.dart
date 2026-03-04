// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_extension_protected_settings_from_key_vault.dart';

class OrchestratedVirtualMachineScaleSetExtension {
  /// Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  final pulumi.Input<bool>? autoUpgradeMinorVersionEnabled;

  /// An ordered list of Extension names which Virtual Machine Scale Set should provision after VM creation.
  final pulumi.Input<List<String>>? extensionsToProvisionAfterVmCreations;

  /// Should failures from the extension be suppressed? Possible values are `true` or `false`.
  ///
  /// &gt; **Note:** Operational failures such as not connecting to the VM will not be suppressed regardless of the `failure_suppression_enabled` value.
  final pulumi.Input<bool>? failureSuppressionEnabled;

  /// A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  final pulumi.Input<String>? forceExtensionExecutionOnChange;

  /// The name for the Virtual Machine Scale Set Extension.
  final pulumi.Input<String> name;

  /// A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  ///
  /// &gt; **Note:** Keys within the `protected_settings` block are notoriously case-sensitive, where the casing required (e.g. `TitleCase` vs `snakeCase`) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final pulumi.Input<String>? protectedSettings;

  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// &gt; **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  final pulumi.Input<
    OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault
  >?
  protectedSettingsFromKeyVault;

  /// Specifies the Publisher of the Extension.
  final pulumi.Input<String> publisher;

  /// A JSON String which specifies Settings for the Extension.
  final pulumi.Input<String>? settings;

  /// Specifies the Type of the Extension.
  final pulumi.Input<String> type;

  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  final pulumi.Input<String> typeHandlerVersion;

  /// Creates a new [OrchestratedVirtualMachineScaleSetExtension].
  /// [autoUpgradeMinorVersionEnabled] Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  /// [extensionsToProvisionAfterVmCreations] An ordered list of Extension names which Virtual Machine Scale Set should provision after VM creation.
  /// [failureSuppressionEnabled] Should failures from the extension be suppressed? Possible values are `true` or `false`.
  /// [forceExtensionExecutionOnChange] A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  /// [name] The name for the Virtual Machine Scale Set Extension.
  /// [protectedSettings] A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  /// [protectedSettingsFromKeyVault] A `protected_settings_from_key_vault` block as defined below.
  /// [publisher] Specifies the Publisher of the Extension.
  /// [settings] A JSON String which specifies Settings for the Extension.
  /// [type] Specifies the Type of the Extension.
  /// [typeHandlerVersion] Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  OrchestratedVirtualMachineScaleSetExtension({
    this.autoUpgradeMinorVersionEnabled,
    this.extensionsToProvisionAfterVmCreations,
    this.failureSuppressionEnabled,
    this.forceExtensionExecutionOnChange,
    required this.name,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    required this.publisher,
    this.settings,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersionEnabled': ?autoUpgradeMinorVersionEnabled,
      'extensionsToProvisionAfterVmCreations':
          ?extensionsToProvisionAfterVmCreations,
      'failureSuppressionEnabled': ?failureSuppressionEnabled,
      'forceExtensionExecutionOnChange': ?forceExtensionExecutionOnChange,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault':
          ?pulumi.Input.mapOptionalInputValue<
            OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault,
            Map<String, dynamic>
          >(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory OrchestratedVirtualMachineScaleSetExtension.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrchestratedVirtualMachineScaleSetExtension(
      autoUpgradeMinorVersionEnabled: (() {
        final guardedValue = map['autoUpgradeMinorVersionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      extensionsToProvisionAfterVmCreations: (() {
        final guardedValue = map['extensionsToProvisionAfterVmCreations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      failureSuppressionEnabled: (() {
        final guardedValue = map['failureSuppressionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      forceExtensionExecutionOnChange: (() {
        final guardedValue = map['forceExtensionExecutionOnChange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protectedSettings: (() {
        final guardedValue = map['protectedSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectedSettingsFromKeyVault: (() {
        final guardedValue = map['protectedSettingsFromKeyVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      typeHandlerVersion: pulumi.Input.fromValue(
        map['typeHandlerVersion'] as String,
      ),
    );
  }
}
