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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The ID to use for the Extension Instance, which will become the final
  /// component of the instance's name.
  final pulumi.Input<String> instanceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ExtensionsInstanceArgs].
  /// [config] The current Config of the Extension Instance.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instanceId] The ID to use for the Extension Instance, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  const ExtensionsInstanceArgs({
    required this.config,
    this.deletionPolicy,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<ExtensionsInstanceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory ExtensionsInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceArgs(
      config: pulumi.Input.fromValue(ExtensionsInstanceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
