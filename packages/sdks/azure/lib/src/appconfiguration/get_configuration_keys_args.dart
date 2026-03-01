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
  final pulumi.Input<String>? key;
  /// The label of the App Configuration Keys tp look up.
  final pulumi.Input<String>? label;

  /// Creates a new [GetConfigurationKeysArgs].
  /// [configurationStoreId] Specifies the id of the App Configuration.
  /// [key] The name of the App Configuration Keys to look up.
  /// [label] The label of the App Configuration Keys tp look up.
  GetConfigurationKeysArgs({
    required pulumi.Output<String> configurationStoreId,
    pulumi.Output<String>? key,
    pulumi.Output<String>? label,
  }) :
      configurationStoreId = pulumi.Input.asInput<String>(configurationStoreId),
      key = pulumi.Input.asOptionalInput<String>(key),
      label = pulumi.Input.asOptionalInput<String>(label);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': configurationStoreId,
      'key': ?key,
      'label': ?label,
    };
  }

  factory GetConfigurationKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationKeysArgs(
      configurationStoreId: pulumi.Output.create<String>(map['configurationStoreId'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
    );
  }
}

