// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_yaml_v2_config_group_args_doc}
/// The set of arguments for ConfigGroup.
/// {@endtemplate}
/// {@macro pulumi_yaml_v2_config_group_args_doc}
class ConfigGroupArgs {
  /// Set of paths and/or URLs to Kubernetes manifest files. Supports glob patterns.
  final pulumi.Input<List<String>>? files;
  /// Objects representing Kubernetes resource configurations.
  final pulumi.Input<List<dynamic>>? objs;
  /// A prefix for the auto-generated resource names. Defaults to the name of the ConfigGroup. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// Indicates that child resources should skip the await logic.
  final pulumi.Input<bool>? skipAwait;
  /// A Kubernetes YAML manifest containing Kubernetes resource configuration(s).
  final pulumi.Input<String>? yaml;

  /// Creates a new [ConfigGroupArgs].
  /// [files] Set of paths and/or URLs to Kubernetes manifest files. Supports glob patterns.
  /// [objs] Objects representing Kubernetes resource configurations.
  /// [resourcePrefix] A prefix for the auto-generated resource names. Defaults to the name of the ConfigGroup. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  /// [skipAwait] Indicates that child resources should skip the await logic.
  /// [yaml] A Kubernetes YAML manifest containing Kubernetes resource configuration(s).
  ConfigGroupArgs({
    this.files,
    this.objs,
    this.resourcePrefix,
    this.skipAwait,
    this.yaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': ?files,
      'objs': ?objs,
      'resourcePrefix': ?resourcePrefix,
      'skipAwait': ?skipAwait,
      'yaml': ?yaml,
    };
  }

  factory ConfigGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConfigGroupArgs(
      files: map['files'] == null ? null : ((map['files'] as List).cast<String>()).input(),
      objs: map['objs'] == null ? null : ((map['objs'] as List).cast<dynamic>()).input(),
      resourcePrefix: map['resourcePrefix'] == null ? null : (map['resourcePrefix'] as String).input(),
      skipAwait: map['skipAwait'] == null ? null : (map['skipAwait'] as bool).input(),
      yaml: map['yaml'] == null ? null : (map['yaml'] as String).input(),
    );
  }
}

