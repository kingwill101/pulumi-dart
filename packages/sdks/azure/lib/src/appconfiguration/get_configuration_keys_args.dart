// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_get_configuration_keys_get_configuration_keys_args_doc}
/// Arguments for getConfigurationKeys.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_get_configuration_keys_get_configuration_keys_args_doc}
class GetConfigurationKeysArgs {
  /// Specifies the id of the App Configuration.
  final pulumi.Input<String> configurationStoreId;
  /// The name of the App Configuration Keys to look up.
  final pulumi.Input<String?>? key;
  /// The label of the App Configuration Keys tp look up.
  final pulumi.Input<String?>? label;

  /// Creates a new [GetConfigurationKeysArgs].
  /// [configurationStoreId] Specifies the id of the App Configuration.
  /// [key] The name of the App Configuration Keys to look up.
  /// [label] The label of the App Configuration Keys tp look up.
  const GetConfigurationKeysArgs({
    required this.configurationStoreId,
    this.key,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': configurationStoreId,
      'key': ?key,
      'label': ?label,
    };
  }

  factory GetConfigurationKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationKeysArgs(
      configurationStoreId: pulumi.Input.fromValue(map['configurationStoreId'] as String),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
