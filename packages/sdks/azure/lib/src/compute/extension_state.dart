// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_protected_settings_from_key_vault.dart';

/// Input properties used for looking up and filtering Extension resources.
class ExtensionState {
  /// Specifies if the platform deploys the latest minor version update to the `type_handler_version` specified.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// > **Note:** Operational failures such as not connecting to the VM will not be suppressed regardless of the `failure_suppression_enabled` value.
  final pulumi.Input<bool>? failureSuppressionEnabled;
  /// The name of the virtual machine extension peering. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string.
  ///
  /// > **Note:** Certain VM Extensions require that the keys in the `protected_settings` block are case sensitive. If you're seeing unhelpful errors, please ensure the keys are consistent with how Azure is expecting them (for instance, for the `JsonADDomainExtension` extension, the keys are expected to be in `TitleCase`.)
  final pulumi.Input<String>? protectedSettings;
  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// > **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  final pulumi.Input<ExtensionProtectedSettingsFromKeyVault>? protectedSettingsFromKeyVault;
  /// Specifies the collection of extension names after which this extension needs to be provisioned.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// The publisher of the extension, available publishers can be found by using the Azure CLI. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publisher;
  /// The settings passed to the extension, these are specified as a JSON object in a string.
  ///
  /// > **Note:** Certain VM Extensions require that the keys in the `settings` block are case sensitive. If you're seeing unhelpful errors, please ensure the keys are consistent with how Azure is expecting them (for instance, for the `JsonADDomainExtension` extension, the keys are expected to be in `TitleCase`.)
  final pulumi.Input<String>? settings;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of extension, available types for a publisher can be found using the Azure CLI.
  ///
  /// > **Note:** The `Publisher` and `Type` of Virtual Machine Extensions can be found using the Azure CLI, via:
  ///
  /// ```shell
  /// az vm extension image list --location westus -o table
  /// ```
  final pulumi.Input<String>? type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  final pulumi.Input<String>? typeHandlerVersion;
  /// The ID of the Virtual Machine. Changing this forces a new resource to be created
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [ExtensionState].
  /// [autoUpgradeMinorVersion] Specifies if the platform deploys the latest minor version update to the `type_handler_version` specified.
  /// [automaticUpgradeEnabled] Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  /// [failureSuppressionEnabled] Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`.
  /// [name] The name of the virtual machine extension peering. Changing this forces a new resource to be created.
  /// [protectedSettings] The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string.
  /// [protectedSettingsFromKeyVault] A `protected_settings_from_key_vault` block as defined below.
  /// [provisionAfterExtensions] Specifies the collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The publisher of the extension, available publishers can be found by using the Azure CLI. Changing this forces a new resource to be created.
  /// [settings] The settings passed to the extension, these are specified as a JSON object in a string.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of extension, available types for a publisher can be found using the Azure CLI.
  /// [typeHandlerVersion] Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  /// [virtualMachineId] The ID of the Virtual Machine. Changing this forces a new resource to be created
  ExtensionState({
    pulumi.Output<bool>? autoUpgradeMinorVersion,
    pulumi.Output<bool>? automaticUpgradeEnabled,
    pulumi.Output<bool>? failureSuppressionEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectedSettings,
    pulumi.Output<ExtensionProtectedSettingsFromKeyVault>? protectedSettingsFromKeyVault,
    pulumi.Output<List<String>>? provisionAfterExtensions,
    pulumi.Output<String>? publisher,
    pulumi.Output<String>? settings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typeHandlerVersion,
    pulumi.Output<String>? virtualMachineId,
  }) :
      autoUpgradeMinorVersion = pulumi.Input.asOptionalInput<bool>(autoUpgradeMinorVersion),
      automaticUpgradeEnabled = pulumi.Input.asOptionalInput<bool>(automaticUpgradeEnabled),
      failureSuppressionEnabled = pulumi.Input.asOptionalInput<bool>(failureSuppressionEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectedSettings = pulumi.Input.asOptionalInput<String>(protectedSettings),
      protectedSettingsFromKeyVault = pulumi.Input.asOptionalInput<ExtensionProtectedSettingsFromKeyVault>(protectedSettingsFromKeyVault),
      provisionAfterExtensions = pulumi.Input.asOptionalInput<List<String>>(provisionAfterExtensions),
      publisher = pulumi.Input.asOptionalInput<String>(publisher),
      settings = pulumi.Input.asOptionalInput<String>(settings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeHandlerVersion = pulumi.Input.asOptionalInput<String>(typeHandlerVersion),
      virtualMachineId = pulumi.Input.asOptionalInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'failureSuppressionEnabled': ?failureSuppressionEnabled,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<ExtensionProtectedSettingsFromKeyVault, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': ?publisher,
      'settings': ?settings,
      'tags': ?tags,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory ExtensionState.fromMap(Map<String, dynamic> map) {
    return ExtensionState(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<bool>(map['autoUpgradeMinorVersion'] as bool),
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : pulumi.Output.create<bool>(map['automaticUpgradeEnabled'] as bool),
      failureSuppressionEnabled: map['failureSuppressionEnabled'] == null ? null : pulumi.Output.create<bool>(map['failureSuppressionEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectedSettings: map['protectedSettings'] == null ? null : pulumi.Output.create<String>(map['protectedSettings'] as String),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : pulumi.Output.create<ExtensionProtectedSettingsFromKeyVault>(ExtensionProtectedSettingsFromKeyVault.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>())),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : pulumi.Output.create<List<String>>((map['provisionAfterExtensions'] as List).cast<String>()),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<String>(map['publisher'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<String>(map['settings'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : pulumi.Output.create<String>(map['typeHandlerVersion'] as String),
      virtualMachineId: map['virtualMachineId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineId'] as String),
    );
  }
}

