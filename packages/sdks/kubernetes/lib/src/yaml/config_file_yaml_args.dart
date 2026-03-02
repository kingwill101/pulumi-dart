// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_yaml_config_file_yaml_args_doc}
/// The set of arguments for ConfigFile.
/// {@endtemplate}
/// {@macro pulumi_yaml_config_file_yaml_args_doc}
class ConfigFileYamlArgs {
  /// Path or a URL that uniquely identifies a file.
  final pulumi.Input<String> file;
  /// An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// A set of transformations to apply to Kubernetes resource definitions before registering with engine.
  final pulumi.Input<List<dynamic>>? transformations;

  /// Creates a new [ConfigFileYamlArgs].
  /// [file] Path or a URL that uniquely identifies a file.
  /// [resourcePrefix] An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  /// [transformations] A set of transformations to apply to Kubernetes resource definitions before registering with engine.
  ConfigFileYamlArgs({
    required this.file,
    this.resourcePrefix,
    this.transformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
      'resourcePrefix': ?resourcePrefix,
      'transformations': ?transformations,
    };
  }

  factory ConfigFileYamlArgs.fromMap(Map<String, dynamic> map) {
    return ConfigFileYamlArgs(
      file: (map['file'] as String).input(),
      resourcePrefix: map['resourcePrefix'] == null ? null : (map['resourcePrefix'] as String).input(),
      transformations: map['transformations'] == null ? null : ((map['transformations'] as List).cast<dynamic>()).input(),
    );
  }
}

