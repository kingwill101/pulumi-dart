// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_yaml_v2_config_file_args_doc}
/// The set of arguments for ConfigFile.
/// {@endtemplate}
/// {@macro pulumi_yaml_v2_config_file_args_doc}
class ConfigFileArgs {
  /// Path or URL to a Kubernetes manifest file. File must exist.
  final pulumi.Input<String> file;
  /// A prefix for the auto-generated resource names. Defaults to the name of the ConfigFile. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// Indicates that child resources should skip the await logic. Defaults to `false`.
  final pulumi.Input<bool>? skipAwait;

  /// Creates a new [ConfigFileArgs].
  /// [file] Path or URL to a Kubernetes manifest file. File must exist.
  /// [resourcePrefix] A prefix for the auto-generated resource names. Defaults to the name of the ConfigFile. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  /// [skipAwait] Indicates that child resources should skip the await logic. Defaults to `false`.
  const ConfigFileArgs({
    required this.file,
    this.resourcePrefix,
    this.skipAwait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
      'resourcePrefix': ?resourcePrefix,
      'skipAwait': ?skipAwait,
    };
  }

  factory ConfigFileArgs.fromMap(Map<String, dynamic> map) {
    return ConfigFileArgs(
      file: pulumi.Input.fromValue(map['file'] as String),
      resourcePrefix: (() { final guardedValue = map['resourcePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipAwait: (() { final guardedValue = map['skipAwait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
