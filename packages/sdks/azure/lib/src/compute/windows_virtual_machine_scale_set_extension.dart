// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_scale_set_extension_protected_settings_from_key_vault.dart';

class WindowsVirtualMachineScaleSetExtension {
  /// Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The name for the Virtual Machine Scale Set Extension.
  final pulumi.Input<String> name;
  /// A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  ///
  /// > **Note:** Keys within the `protected_settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final pulumi.Input<String>? protectedSettings;
  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// > **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  final pulumi.Input<WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault>? protectedSettingsFromKeyVault;
  /// An ordered list of Extension names which this should be provisioned after.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// Specifies the Publisher of the Extension.
  final pulumi.Input<String> publisher;
  /// A JSON String which specifies Settings for the Extension.
  ///
  /// > **Note:** Keys within the `settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final pulumi.Input<String>? settings;
  /// Specifies the Type of the Extension.
  final pulumi.Input<String> type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  final pulumi.Input<String> typeHandlerVersion;

  /// Creates a new [WindowsVirtualMachineScaleSetExtension].
  /// [autoUpgradeMinorVersion] Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  /// [automaticUpgradeEnabled] Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  /// [forceUpdateTag] A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  /// [name] The name for the Virtual Machine Scale Set Extension.
  /// [protectedSettings] A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  /// [protectedSettingsFromKeyVault] A `protected_settings_from_key_vault` block as defined below.
  /// [provisionAfterExtensions] An ordered list of Extension names which this should be provisioned after.
  /// [publisher] Specifies the Publisher of the Extension.
  /// [settings] A JSON String which specifies Settings for the Extension.
  /// [type] Specifies the Type of the Extension.
  /// [typeHandlerVersion] Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  WindowsVirtualMachineScaleSetExtension({
    this.autoUpgradeMinorVersion,
    this.automaticUpgradeEnabled,
    this.forceUpdateTag,
    required this.name,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'forceUpdateTag': ?forceUpdateTag,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory WindowsVirtualMachineScaleSetExtension.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetExtension(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion'] as bool).input(),
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : (map['automaticUpgradeEnabled'] as bool).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag'] as String).input(),
      name: (map['name'] as String).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings'] as String).input(),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : (WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>())).input(),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : ((map['provisionAfterExtensions'] as List).cast<String>()).input(),
      publisher: (map['publisher'] as String).input(),
      settings: map['settings'] == null ? null : (map['settings'] as String).input(),
      type: (map['type'] as String).input(),
      typeHandlerVersion: (map['typeHandlerVersion'] as String).input(),
    );
  }
}

