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
    required pulumi.Output<ExtensionsInstanceConfig> config,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
  }) :
      config = pulumi.Input.asInput<ExtensionsInstanceConfig>(config),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<ExtensionsInstanceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory ExtensionsInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceArgs(
      config: pulumi.Output.create<ExtensionsInstanceConfig>(ExtensionsInstanceConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

