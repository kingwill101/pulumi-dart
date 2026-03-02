// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extensions_instance_config.dart';

/// {@template pulumi_firebase_extensions_instance_extensions_instance_args_doc}
/// The set of arguments for ExtensionsInstance.
/// {@endtemplate}
/// {@macro pulumi_firebase_extensions_instance_extensions_instance_args_doc}
class ExtensionsInstanceArgs {
  /// The current Config of the Extension Instance.
  /// Structure is documented below.
  final pulumi.Input<ExtensionsInstanceConfig> config;
  /// The ID to use for the Extension Instance, which will become the final
  /// component of the instance's name.
  final pulumi.Input<String> instanceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ExtensionsInstanceArgs].
  /// [config] The current Config of the Extension Instance.
  /// [instanceId] The ID to use for the Extension Instance, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  ExtensionsInstanceArgs({
    required this.config,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<ExtensionsInstanceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory ExtensionsInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceArgs(
      config: (ExtensionsInstanceConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      instanceId: (map['instanceId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

