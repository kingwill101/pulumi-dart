// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_protected_settings_from_key_vault.dart';

/// {@template pulumi_compute_extension_extension_args_doc}
/// The set of arguments for Extension.
/// {@endtemplate}
/// {@macro pulumi_compute_extension_extension_args_doc}
class ExtensionArgs {
  /// Specifies if the platform deploys the latest minor version update to the `type_handler_version` specified.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// &gt; **Note:** Operational failures such as not connecting to the VM will not be suppressed regardless of the `failure_suppression_enabled` value.
  final pulumi.Input<bool>? failureSuppressionEnabled;
  /// The name of the virtual machine extension peering. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string.
  ///
  /// &gt; **Note:** Certain VM Extensions require that the keys in the `protected_settings` block are case sensitive. If you're seeing unhelpful errors, please ensure the keys are consistent with how Azure is expecting them (for instance, for the `JsonADDomainExtension` extension, the keys are expected to be in `TitleCase`.)
  final pulumi.Input<String>? protectedSettings;
  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// &gt; **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  final pulumi.Input<ExtensionProtectedSettingsFromKeyVault>? protectedSettingsFromKeyVault;
  /// Specifies the collection of extension names after which this extension needs to be provisioned.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// The publisher of the extension, available publishers can be found by using the Azure CLI. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;
  /// The settings passed to the extension, these are specified as a JSON object in a string.
  ///
  /// &gt; **Note:** Certain VM Extensions require that the keys in the `settings` block are case sensitive. If you're seeing unhelpful errors, please ensure the keys are consistent with how Azure is expecting them (for instance, for the `JsonADDomainExtension` extension, the keys are expected to be in `TitleCase`.)
  final pulumi.Input<String>? settings;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of extension, available types for a publisher can be found using the Azure CLI.
  ///
  /// &gt; **Note:** The `Publisher` and `Type` of Virtual Machine Extensions can be found using the Azure CLI, via:
  ///
  /// ```shell
  /// az vm extension image list --location westus -o table
  /// ```
  final pulumi.Input<String> type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  final pulumi.Input<String> typeHandlerVersion;
  /// The ID of the Virtual Machine. Changing this forces a new resource to be created
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [ExtensionArgs].
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
  ExtensionArgs({
    this.autoUpgradeMinorVersion,
    this.automaticUpgradeEnabled,
    this.failureSuppressionEnabled,
    this.name,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    this.tags,
    required this.type,
    required this.typeHandlerVersion,
    required this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'failureSuppressionEnabled': ?failureSuppressionEnabled,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<ExtensionProtectedSettingsFromKeyVault, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settings': ?settings,
      'tags': ?tags,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory ExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionArgs(
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticUpgradeEnabled: (() { final guardedValue = map['automaticUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureSuppressionEnabled: (() { final guardedValue = map['failureSuppressionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedSettingsFromKeyVault: (() { final guardedValue = map['protectedSettingsFromKeyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtensionProtectedSettingsFromKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionAfterExtensions: (() { final guardedValue = map['provisionAfterExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      typeHandlerVersion: pulumi.Input.fromValue(map['typeHandlerVersion'] as String),
      virtualMachineId: pulumi.Input.fromValue(map['virtualMachineId'] as String),
    );
  }
}

