// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Extension resources.
class ExtensionState {
  /// The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String?>? arcMachineId;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** When `automaticUpgradeEnabled` can only be set during creation. Any later change will be ignored.
  ///
  /// &gt; **Note:** When `automaticUpgradeEnabled` is set to `true`, the `typeHandlerVersion` is automatically updated by the Azure platform when a new version is available and any change in `typeHandlerVersion` will be automatically ignored.
  final pulumi.Input<bool?>? automaticUpgradeEnabled;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String?>? forceUpdateTag;
  /// The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String?>? name;
  /// Json formatted protected settings for the extension.
  final pulumi.Input<String?>? protectedSettings;
  /// The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String?>? publisher;
  /// Json formatted public settings for the extension.
  final pulumi.Input<String?>? settings;
  /// A mapping of tags which should be assigned to the Hybrid Compute Machine Extension.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String?>? type;
  /// Specifies the version of the script handler.
  ///
  /// &gt; **Note:** 1. When `automaticUpgradeEnabled` is set to `false` and no `typeHandlerVersion` is specified, the `typeHandlerVersion` change should be manually ignored by `ignoreChanges` lifecycle block. This is because the `typeHandlerVersion` is set by the Azure platform when the extension is created. 2. When `automaticUpgradeEnabled` is set to `false` and `typeHandlerVersion` is specified, the provider will check whether the version prefix is aligned with user input. For example, if user specifies `1.24` in `typeHandlerVersion`, `1.24.1` will be considered as no diff.
  final pulumi.Input<String?>? typeHandlerVersion;

  /// Creates a new [ExtensionState].
  /// [arcMachineId] The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [automaticUpgradeEnabled] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`. Defaults to `true`.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [location] The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [name] The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [protectedSettings] Json formatted protected settings for the extension.
  /// [publisher] The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [settings] Json formatted public settings for the extension.
  /// [tags] A mapping of tags which should be assigned to the Hybrid Compute Machine Extension.
  /// [type] Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [typeHandlerVersion] Specifies the version of the script handler.
  const ExtensionState({
    this.arcMachineId,
    this.automaticUpgradeEnabled,
    this.forceUpdateTag,
    this.location,
    this.name,
    this.protectedSettings,
    this.publisher,
    this.settings,
    this.tags,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcMachineId': ?arcMachineId,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'forceUpdateTag': ?forceUpdateTag,
      'location': ?location,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'publisher': ?publisher,
      'settings': ?settings,
      'tags': ?tags,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory ExtensionState.fromMap(Map<String, dynamic> map) {
    return ExtensionState(
      arcMachineId: (() { final guardedValue = map['arcMachineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automaticUpgradeEnabled: (() { final guardedValue = map['automaticUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
