// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_yaml_config_group_yaml_args_doc}
/// The set of arguments for ConfigGroup.
/// {@endtemplate}
/// {@macro pulumi_yaml_config_group_yaml_args_doc}
class ConfigGroupYamlArgs {
  /// Set of paths or a URLs that uniquely identify files.
  final pulumi.Input<dynamic>? files;
  /// Objects representing Kubernetes resources.
  final pulumi.Input<dynamic>? objs;
  /// An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  final pulumi.Input<String?>? resourcePrefix;
  /// A set of transformations to apply to Kubernetes resource definitions before registering with engine.
  final pulumi.Input<List<dynamic>?>? transformations_;
  /// YAML text containing Kubernetes resource definitions.
  final pulumi.Input<dynamic>? yaml;

  /// Creates a new [ConfigGroupYamlArgs].
  /// [files] Set of paths or a URLs that uniquely identify files.
  /// [objs] Objects representing Kubernetes resources.
  /// [resourcePrefix] An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  /// [transformations_] A set of transformations to apply to Kubernetes resource definitions before registering with engine.
  /// [yaml] YAML text containing Kubernetes resource definitions.
  const ConfigGroupYamlArgs({
    this.files,
    this.objs,
    this.resourcePrefix,
    this.transformations_,
    this.yaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': ?files,
      'objs': ?objs,
      'resourcePrefix': ?resourcePrefix,
      'transformations': ?transformations_,
      'yaml': ?yaml,
    };
  }

  factory ConfigGroupYamlArgs.fromMap(Map<String, dynamic> map) {
    return ConfigGroupYamlArgs(
      files: (() { final guardedValue = map['files']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      objs: (() { final guardedValue = map['objs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourcePrefix: (() { final guardedValue = map['resourcePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      yaml: (() { final guardedValue = map['yaml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
