// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_container_registry_get_container_registry_args_doc}
/// Arguments for getContainerRegistry.
/// {@endtemplate}
/// {@macro pulumi_index_get_container_registry_get_container_registry_args_doc}
class GetContainerRegistryArgs {
  /// The name of the container registry.
  final pulumi.Input<String> name;

  /// Creates a new [GetContainerRegistryArgs].
  /// [name] The name of the container registry.
  const GetContainerRegistryArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetContainerRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerRegistryArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
