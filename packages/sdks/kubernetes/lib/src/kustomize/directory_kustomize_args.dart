// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kustomize_directory_kustomize_args_doc}
/// The set of arguments for Directory.
/// {@endtemplate}
/// {@macro pulumi_kustomize_directory_kustomize_args_doc}
class DirectoryKustomizeArgs {
  /// The directory containing the kustomization to apply. The value can be a local directory or a folder in a
  /// git repository.
  /// Example: ./helloWorld
  /// Example: https://github.com/kubernetes-sigs/kustomize/tree/master/examples/helloWorld
  final pulumi.Input<String> directory;
  /// An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// A set of transformations to apply to Kubernetes resource definitions before registering with engine.
  final pulumi.Input<List<dynamic>>? transformations;

  /// Creates a new [DirectoryKustomizeArgs].
  /// [directory] The directory containing the kustomization to apply. The value can be a local directory or a folder in a
  /// [resourcePrefix] An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  /// [transformations] A set of transformations to apply to Kubernetes resource definitions before registering with engine.
  DirectoryKustomizeArgs({
    required this.directory,
    this.resourcePrefix,
    this.transformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': directory,
      'resourcePrefix': ?resourcePrefix,
      'transformations': ?transformations,
    };
  }

  factory DirectoryKustomizeArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryKustomizeArgs(
      directory: (map['directory'] as String).input(),
      resourcePrefix: map['resourcePrefix'] == null ? null : (map['resourcePrefix'] as String).input(),
      transformations: map['transformations'] == null ? null : ((map['transformations'] as List).cast<dynamic>()).input(),
    );
  }
}

