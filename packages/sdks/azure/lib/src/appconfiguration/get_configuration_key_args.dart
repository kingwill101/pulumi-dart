// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_get_configuration_key_get_configuration_key_args_doc}
/// Arguments for getConfigurationKey.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_get_configuration_key_get_configuration_key_args_doc}
class GetConfigurationKeyArgs {
  /// Specifies the id of the App Configuration.
  final pulumi.Input<String> configurationStoreId;
  /// The name of the App Configuration Key.
  final pulumi.Input<String> key;
  /// The label of the App Configuration Key.
  final pulumi.Input<String>? label;

  /// Creates a new [GetConfigurationKeyArgs].
  /// [configurationStoreId] Specifies the id of the App Configuration.
  /// [key] The name of the App Configuration Key.
  /// [label] The label of the App Configuration Key.
  GetConfigurationKeyArgs({
    required this.configurationStoreId,
    required this.key,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': configurationStoreId,
      'key': key,
      'label': ?label,
    };
  }

  factory GetConfigurationKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationKeyArgs(
      configurationStoreId: (map['configurationStoreId'] as String).input(),
      key: (map['key'] as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
    );
  }
}

