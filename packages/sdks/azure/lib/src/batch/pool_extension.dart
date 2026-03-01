// ignore_for_file: unused_element, unnecessary_cast


class PoolExtension {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`.
  ///
  /// > **Note:** When `automatic_upgrade_enabled` is set to `true`, the `type_handler_version` is automatically updated by the Azure platform when a new version is available and any change in `type_handler_version` should be manually ignored by user.
  final bool? automaticUpgradeEnabled;
  /// The name of the virtual machine extension.
  final String name;
  /// JSON formatted protected settings for the extension, the value should be encoded with `jsonencode` function. The extension can contain either `protected_settings` or `provision_after_extensions` or no protected settings at all.
  final String? protectedSettings;
  /// The collection of extension names. Collection of extension names after which this extension needs to be provisioned.
  final List<String>? provisionAfterExtensions;
  /// The name of the extension handler publisher.The name of the extension handler publisher.
  final String publisher;
  /// JSON formatted public settings for the extension, the value should be encoded with `jsonencode` function.
  final String? settingsJson;
  /// The type of the extensions.
  final String type;
  /// The version of script handler.
  final String? typeHandlerVersion;

  /// Creates a new [PoolExtension].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [automaticUpgradeEnabled] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`.
  /// [name] The name of the virtual machine extension.
  /// [protectedSettings] JSON formatted protected settings for the extension, the value should be encoded with `jsonencode` function. The extension can contain either `protected_settings` or `provision_after_extensions` or no protected settings at all.
  /// [provisionAfterExtensions] The collection of extension names. Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.The name of the extension handler publisher.
  /// [settingsJson] JSON formatted public settings for the extension, the value should be encoded with `jsonencode` function.
  /// [type] The type of the extensions.
  /// [typeHandlerVersion] The version of script handler.
  PoolExtension({
    this.autoUpgradeMinorVersion,
    this.automaticUpgradeEnabled,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settingsJson,
    required this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settingsJson': ?settingsJson,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory PoolExtension.fromMap(Map<String, dynamic> map) {
    return PoolExtension(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion'] as bool,
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : map['automaticUpgradeEnabled'] as bool,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'] as String,
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : (map['provisionAfterExtensions'] as List).cast<String>(),
      publisher: map['publisher'] as String,
      settingsJson: map['settingsJson'] == null ? null : map['settingsJson'] as String,
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

