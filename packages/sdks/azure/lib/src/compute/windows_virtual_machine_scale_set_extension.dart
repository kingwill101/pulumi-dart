// ignore_for_file: unused_element, unnecessary_cast

import 'windows_virtual_machine_scale_set_extension_protected_settings_from_key_vault.dart';

class WindowsVirtualMachineScaleSetExtension {
  /// Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  final bool? autoUpgradeMinorVersion;
  /// Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  final bool? automaticUpgradeEnabled;
  /// A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  final String? forceUpdateTag;
  /// The name for the Virtual Machine Scale Set Extension.
  final String name;
  /// A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  ///
  /// > **Note:** Keys within the `protected_settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final String? protectedSettings;
  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// > **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  final WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault? protectedSettingsFromKeyVault;
  /// An ordered list of Extension names which this should be provisioned after.
  final List<String>? provisionAfterExtensions;
  /// Specifies the Publisher of the Extension.
  final String publisher;
  /// A JSON String which specifies Settings for the Extension.
  ///
  /// > **Note:** Keys within the `settings` block are notoriously case-sensitive, where the casing required (e.g. TitleCase vs snakeCase) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final String? settings;
  /// Specifies the Type of the Extension.
  final String type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  final String typeHandlerVersion;

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
      'protectedSettingsFromKeyVault': ?protectedSettingsFromKeyVault == null ? null : protectedSettingsFromKeyVault!.toMap(),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory WindowsVirtualMachineScaleSetExtension.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetExtension(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion'] as bool,
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : map['automaticUpgradeEnabled'] as bool,
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag'] as String,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'] as String,
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>()),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : (map['provisionAfterExtensions'] as List).cast<String>(),
      publisher: map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'] as String,
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] as String,
    );
  }
}

