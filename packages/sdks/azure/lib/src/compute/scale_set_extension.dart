// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetExtension {
  /// Specifies whether or not to use the latest minor version available.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Specifies the name of the extension.
  final pulumi.Input<String> name;
  /// The protectedSettings passed to the extension, like settings, these are specified as a JSON object in a string.
  final pulumi.Input<String>? protectedSettings;
  /// Specifies a dependency array of extensions required to be executed before, the array stores the name of each extension.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// The publisher of the extension, available publishers can be found by using the Azure CLI.
  final pulumi.Input<String> publisher;
  /// The settings passed to the extension, these are specified as a JSON object in a string.
  final pulumi.Input<String>? settings;
  /// The type of extension, available types for a publisher can be found using the Azure CLI.
  final pulumi.Input<String> type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  final pulumi.Input<String> typeHandlerVersion;

  /// Creates a new [ScaleSetExtension].
  /// [autoUpgradeMinorVersion] Specifies whether or not to use the latest minor version available.
  /// [name] Specifies the name of the extension.
  /// [protectedSettings] The protectedSettings passed to the extension, like settings, these are specified as a JSON object in a string.
  /// [provisionAfterExtensions] Specifies a dependency array of extensions required to be executed before, the array stores the name of each extension.
  /// [publisher] The publisher of the extension, available publishers can be found by using the Azure CLI.
  /// [settings] The settings passed to the extension, these are specified as a JSON object in a string.
  /// [type] The type of extension, available types for a publisher can be found using the Azure CLI.
  /// [typeHandlerVersion] Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  const ScaleSetExtension({
    this.autoUpgradeMinorVersion,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory ScaleSetExtension.fromMap(Map<String, dynamic> map) {
    return ScaleSetExtension(
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionAfterExtensions: (() { final guardedValue = map['provisionAfterExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      typeHandlerVersion: pulumi.Input.fromValue(map['typeHandlerVersion'] as String),
    );
  }
}
