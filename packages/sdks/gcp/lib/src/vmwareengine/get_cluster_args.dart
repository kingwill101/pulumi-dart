// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// The resource name of the private cloud that this cluster belongs.
  final pulumi.Input<String> parent;

  /// Creates a new [GetClusterArgs].
  /// [name] Name of the resource.
  /// [parent] The resource name of the private cloud that this cluster belongs.
  const GetClusterArgs({
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parent': parent,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

