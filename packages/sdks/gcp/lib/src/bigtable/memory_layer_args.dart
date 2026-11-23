// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtable_memory_layer_memory_layer_args_doc}
/// The set of arguments for MemoryLayer.
/// {@endtemplate}
/// {@macro pulumi_bigtable_memory_layer_memory_layer_args_doc}
class MemoryLayerArgs {
  /// The ID of the cluster to enable the memory layer on.
  final pulumi.Input<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The name of the instance to enable the memory layer within.
  final pulumi.Input<String> instance;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [MemoryLayerArgs].
  /// [cluster] The ID of the cluster to enable the memory layer on.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] The name of the instance to enable the memory layer within.
  /// [project] The ID of the project in which the resource belongs.
  const MemoryLayerArgs({
    required this.cluster,
    this.deletionPolicy,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'deletionPolicy': ?deletionPolicy,
      'instance': instance,
      'project': ?project,
    };
  }

  factory MemoryLayerArgs.fromMap(Map<String, dynamic> map) {
    return MemoryLayerArgs(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
