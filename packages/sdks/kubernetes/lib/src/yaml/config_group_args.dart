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
    pulumi.Output<List<String>>? files,
    pulumi.Output<List<dynamic>>? objs,
    pulumi.Output<String>? resourcePrefix,
    pulumi.Output<bool>? skipAwait,
    pulumi.Output<String>? yaml,
  }) :
      files = pulumi.Input.asOptionalInput<List<String>>(files),
      objs = pulumi.Input.asOptionalInput<List<dynamic>>(objs),
      resourcePrefix = pulumi.Input.asOptionalInput<String>(resourcePrefix),
      skipAwait = pulumi.Input.asOptionalInput<bool>(skipAwait),
      yaml = pulumi.Input.asOptionalInput<String>(yaml);

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
      files: map['files'] == null ? null : pulumi.Output.create<List<String>>((map['files'] as List).cast<String>()),
      objs: map['objs'] == null ? null : pulumi.Output.create<List<dynamic>>((map['objs'] as List).cast<dynamic>()),
      resourcePrefix: map['resourcePrefix'] == null ? null : pulumi.Output.create<String>(map['resourcePrefix'] as String),
      skipAwait: map['skipAwait'] == null ? null : pulumi.Output.create<bool>(map['skipAwait'] as bool),
      yaml: map['yaml'] == null ? null : pulumi.Output.create<String>(map['yaml'] as String),
    );
  }
}

