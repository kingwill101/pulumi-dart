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
  /// > **Note:** `type_handler_version` cannot be set when `automatic_upgrade_enabled` is set to `true`.
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
  HciExtensionState({
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
      arcSettingId: map['arcSettingId'] == null ? null : (map['arcSettingId']! as String).input(),
      autoUpgradeMinorVersionEnabled: map['autoUpgradeMinorVersionEnabled'] == null ? null : (map['autoUpgradeMinorVersionEnabled']! as bool).input(),
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : (map['automaticUpgradeEnabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      settings: map['settings'] == null ? null : (map['settings']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion']! as String).input(),
    );
  }
}

