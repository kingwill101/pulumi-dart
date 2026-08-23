// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_container_registries_get_container_registries_args_doc}
/// Arguments for getContainerRegistries.
/// {@endtemplate}
/// {@macro pulumi_index_get_container_registries_get_container_registries_args_doc}
class GetContainerRegistriesArgs {
  final pulumi.Input<String> name;

  /// Creates a new [GetContainerRegistriesArgs].
  /// [name] Required.
  const GetContainerRegistriesArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetContainerRegistriesArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerRegistriesArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
