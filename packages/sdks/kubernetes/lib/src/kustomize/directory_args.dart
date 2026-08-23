// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kustomize_v2_directory_args_doc}
/// The set of arguments for Directory.
/// {@endtemplate}
/// {@macro pulumi_kustomize_v2_directory_args_doc}
class DirectoryArgs {
  /// The directory containing the kustomization to apply. The value can be a local directory or a folder in a
  /// git repository.
  /// Example: ./helloWorld
  /// Example: https://github.com/kubernetes-sigs/kustomize/tree/master/examples/helloWorld
  final pulumi.Input<String> directory;
  /// The default namespace to apply to the resources. Defaults to the provider's namespace.
  final pulumi.Input<String>? namespace;
  /// A prefix for the auto-generated resource names. Defaults to the name of the Directory resource. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo:resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// Indicates that child resources should skip the await logic. Defaults to `false`.
  final pulumi.Input<bool>? skipAwait;

  /// Creates a new [DirectoryArgs].
  /// [directory] The directory containing the kustomization to apply. The value can be a local directory or a folder in a
  /// [namespace] The default namespace to apply to the resources. Defaults to the provider's namespace.
  /// [resourcePrefix] A prefix for the auto-generated resource names. Defaults to the name of the Directory resource. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo:resourceName".
  /// [skipAwait] Indicates that child resources should skip the await logic. Defaults to `false`.
  const DirectoryArgs({
    required this.directory,
    this.namespace,
    this.resourcePrefix,
    this.skipAwait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': directory,
      'namespace': ?namespace,
      'resourcePrefix': ?resourcePrefix,
      'skipAwait': ?skipAwait,
    };
  }

  factory DirectoryArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryArgs(
      directory: pulumi.Input.fromValue(map['directory'] as String),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePrefix: (() { final guardedValue = map['resourcePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipAwait: (() { final guardedValue = map['skipAwait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
