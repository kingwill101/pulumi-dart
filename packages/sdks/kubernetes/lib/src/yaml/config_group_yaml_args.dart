// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_yaml_config_group_yaml_args_doc}
/// The set of arguments for ConfigGroup.
/// {@endtemplate}
/// {@macro pulumi_yaml_config_group_yaml_args_doc}
class ConfigGroupYamlArgs {
  /// Set of paths or a URLs that uniquely identify files.
  final pulumi.Input<String>? files;
  /// Objects representing Kubernetes resources.
  final pulumi.Input<List<dynamic>>? objs;
  /// An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// A set of transformations to apply to Kubernetes resource definitions before registering with engine.
  final pulumi.Input<List<dynamic>>? transformations;
  /// YAML text containing Kubernetes resource definitions.
  final pulumi.Input<String>? yaml;

  /// Creates a new [ConfigGroupYamlArgs].
  /// [files] Set of paths or a URLs that uniquely identify files.
  /// [objs] Objects representing Kubernetes resources.
  /// [resourcePrefix] An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  /// [transformations] A set of transformations to apply to Kubernetes resource definitions before registering with engine.
  /// [yaml] YAML text containing Kubernetes resource definitions.
  ConfigGroupYamlArgs({
    this.files,
    this.objs,
    this.resourcePrefix,
    this.transformations,
    this.yaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': ?files,
      'objs': ?objs,
      'resourcePrefix': ?resourcePrefix,
      'transformations': ?transformations,
      'yaml': ?yaml,
    };
  }

  factory ConfigGroupYamlArgs.fromMap(Map<String, dynamic> map) {
    return ConfigGroupYamlArgs(
      files: map['files'] == null ? null : (map['files']! as String).input(),
      objs: map['objs'] == null ? null : ((map['objs']! as List).cast<dynamic>()).input(),
      resourcePrefix: map['resourcePrefix'] == null ? null : (map['resourcePrefix']! as String).input(),
      transformations: map['transformations'] == null ? null : ((map['transformations']! as List).cast<dynamic>()).input(),
      yaml: map['yaml'] == null ? null : (map['yaml']! as String).input(),
    );
  }
}

