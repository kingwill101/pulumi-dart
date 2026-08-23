// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HciExtension resources.
class HciExtensionState {
  /// The ID of the Azure Stack HCI Cluster Arc Setting. Changing this forces a new resource to be created.
  final pulumi.Input<String>? arcSettingId;
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. Changing this forces a new resource to be created. Possible values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? autoUpgradeMinorVersionEnabled;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Possible values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// The name which should be used for this Azure Stack HCI Extension. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The json formatted protected settings for the extension.
  final pulumi.Input<String>? protectedSettings;
  /// The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publisher;
  /// The json formatted public settings for the extension.
  final pulumi.Input<String>? settings;
  /// Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  ///
  /// &gt; **Note:** `typeHandlerVersion` cannot be set when `automaticUpgradeEnabled` is set to `true`.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [HciExtensionState].
  /// [arcSettingId] The ID of the Azure Stack HCI Cluster Arc Setting. Changing this forces a new resource to be created.
  /// [autoUpgradeMinorVersionEnabled] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. Changing this forces a new resource to be created. Possible values are `true` and `false`. Defaults to `true`.
  /// [automaticUpgradeEnabled] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Possible values are `true` and `false`. Defaults to `true`.
  /// [name] The name which should be used for this Azure Stack HCI Extension. Changing this forces a new resource to be created.
  /// [protectedSettings] The json formatted protected settings for the extension.
  /// [publisher] The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new resource to be created.
  /// [settings] The json formatted public settings for the extension.
  /// [type] Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new resource to be created.
  /// [typeHandlerVersion] Specifies the version of the script handler.
  const HciExtensionState({
    this.arcSettingId,
    this.autoUpgradeMinorVersionEnabled,
    this.automaticUpgradeEnabled,
    this.name,
    this.protectedSettings,
    this.publisher,
    this.settings,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcSettingId': ?arcSettingId,
      'autoUpgradeMinorVersionEnabled': ?autoUpgradeMinorVersionEnabled,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'publisher': ?publisher,
      'settings': ?settings,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory HciExtensionState.fromMap(Map<String, dynamic> map) {
    return HciExtensionState(
      arcSettingId: (() { final guardedValue = map['arcSettingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoUpgradeMinorVersionEnabled: (() { final guardedValue = map['autoUpgradeMinorVersionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticUpgradeEnabled: (() { final guardedValue = map['automaticUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
