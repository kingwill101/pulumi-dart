// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Extension resources.
class ExtensionState {
  /// The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String>? arcMachineId;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`. Defaults to `true`.
  ///
  /// > **Note:** When `automatic_upgrade_enabled` can only be set during creation. Any later change will be ignored.
  ///
  /// > **Note:** When `automatic_upgrade_enabled` is set to `true`, the `type_handler_version` is automatically updated by the Azure platform when a new version is available and any change in `type_handler_version` will be automatically ignored.
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String>? name;
  /// Json formatted protected settings for the extension.
  final pulumi.Input<String>? protectedSettings;
  /// The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String>? publisher;
  /// Json formatted public settings for the extension.
  final pulumi.Input<String>? settings;
  /// A mapping of tags which should be assigned to the Hybrid Compute Machine Extension.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  ///
  /// > **Note:** 1. When `automatic_upgrade_enabled` is set to `false` and no `type_handler_version` is specified, the `type_handler_version` change should be manually ignored by `ignore_changes` lifecycle block. This is because the `type_handler_version` is set by the Azure platform when the extension is created. 2. When `automatic_upgrade_enabled` is set to `false` and `type_handler_version` is specified, the provider will check whether the version prefix is aligned with user input. For example, if user specifies `1.24` in `type_handler_version`, `1.24.1` will be considered as no diff.
  final pulumi.Input<String>? typeHandlerVersion;

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
  ExtensionState({
    pulumi.Output<String>? arcMachineId,
    pulumi.Output<bool>? automaticUpgradeEnabled,
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectedSettings,
    pulumi.Output<String>? publisher,
    pulumi.Output<String>? settings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typeHandlerVersion,
  }) :
      arcMachineId = pulumi.Input.asOptionalInput<String>(arcMachineId),
      automaticUpgradeEnabled = pulumi.Input.asOptionalInput<bool>(automaticUpgradeEnabled),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectedSettings = pulumi.Input.asOptionalInput<String>(protectedSettings),
      publisher = pulumi.Input.asOptionalInput<String>(publisher),
      settings = pulumi.Input.asOptionalInput<String>(settings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeHandlerVersion = pulumi.Input.asOptionalInput<String>(typeHandlerVersion);

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
      arcMachineId: map['arcMachineId'] == null ? null : pulumi.Output.create<String>(map['arcMachineId'] as String),
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : pulumi.Output.create<bool>(map['automaticUpgradeEnabled'] as bool),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectedSettings: map['protectedSettings'] == null ? null : pulumi.Output.create<String>(map['protectedSettings'] as String),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<String>(map['publisher'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<String>(map['settings'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : pulumi.Output.create<String>(map['typeHandlerVersion'] as String),
    );
  }
}

