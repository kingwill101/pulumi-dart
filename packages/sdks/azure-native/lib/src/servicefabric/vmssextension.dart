// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies set of extensions that should be installed onto the virtual machines.
class VMSSExtension {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool?>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final pulumi.Input<bool?>? enableAutomaticUpgrade;
  /// If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String?>? forceUpdateTag;
  /// The name of the extension.
  final pulumi.Input<String> name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// Collection of extension names after which this extension needs to be provisioned.
  final pulumi.Input<List<String>?>? provisionAfterExtensions;
  /// The name of the extension handler publisher.
  final pulumi.Input<String> publisher;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Indicates the setup order for the extension.
  final pulumi.Input<List<dynamic>?>? setupOrder;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String> type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String> typeHandlerVersion;

  /// Creates a new [VMSSExtension].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [forceUpdateTag] If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  /// [name] The name of the extension.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [setupOrder] Indicates the setup order for the extension.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  const VMSSExtension({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    this.setupOrder,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settings': ?settings,
      'setupOrder': ?setupOrder,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory VMSSExtension.fromMap(Map<String, dynamic> map) {
    return VMSSExtension(
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutomaticUpgrade: (() { final guardedValue = map['enableAutomaticUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      provisionAfterExtensions: (() { final guardedValue = map['provisionAfterExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      setupOrder: (() { final guardedValue = map['setupOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      typeHandlerVersion: pulumi.Input.fromValue(map['typeHandlerVersion'] as String),
    );
  }
}
