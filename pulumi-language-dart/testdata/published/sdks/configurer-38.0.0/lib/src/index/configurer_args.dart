// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_configurer_args_doc}
/// The set of arguments for Configurer.
/// {@endtemplate}
/// {@macro pulumi_index_configurer_args_doc}
class ConfigurerArgs {
  final pulumi.Input<String> providerConfig;

  /// Creates a new [ConfigurerArgs].
  /// [providerConfig] Required.
  const ConfigurerArgs({
    required this.providerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerConfig': providerConfig,
    };
  }

  factory ConfigurerArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurerArgs(
      providerConfig: pulumi.Input.fromValue(map['providerConfig'] as String),
    );
  }
}
