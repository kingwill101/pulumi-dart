// ignore_for_file: unused_element, unnecessary_cast


class GetPoolExtension {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool autoUpgradeMinorVersion;
  /// The name of the Batch pool.
  final String name;
  /// The extension can contain either `protected_settings` or `provision_after_extensions` or no protected settings at all.
  final String protectedSettings;
  /// The collection of extension names. Collection of extension names after which this extension needs to be provisioned.
  final List<String> provisionAfterExtensions;
  /// The name of the extension handler publisher.The name of the extension handler publisher.
  final String publisher;
  /// JSON formatted public settings for the extension.
  final String settingsJson;
  /// The type of container configuration.
  final String type;
  /// The version of script handler.
  final String typeHandlerVersion;

  /// Creates a new [GetPoolExtension].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [name] The name of the Batch pool.
  /// [protectedSettings] The extension can contain either `protected_settings` or `provision_after_extensions` or no protected settings at all.
  /// [provisionAfterExtensions] The collection of extension names. Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.The name of the extension handler publisher.
  /// [settingsJson] JSON formatted public settings for the extension.
  /// [type] The type of container configuration.
  /// [typeHandlerVersion] The version of script handler.
  GetPoolExtension({
    required this.autoUpgradeMinorVersion,
    required this.name,
    required this.protectedSettings,
    required this.provisionAfterExtensions,
    required this.publisher,
    required this.settingsJson,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': autoUpgradeMinorVersion,
      'name': name,
      'protectedSettings': protectedSettings,
      'provisionAfterExtensions': provisionAfterExtensions,
      'publisher': publisher,
      'settingsJson': settingsJson,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory GetPoolExtension.fromMap(Map<String, dynamic> map) {
    return GetPoolExtension(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] as bool,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] as String,
      provisionAfterExtensions: (map['provisionAfterExtensions'] as List).cast<String>(),
      publisher: map['publisher'] as String,
      settingsJson: map['settingsJson'] as String,
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] as String,
    );
  }
}

