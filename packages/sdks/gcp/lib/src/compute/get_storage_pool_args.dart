// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_storage_pool_get_storage_pool_args_doc}
/// Arguments for getStoragePool.
/// {@endtemplate}
/// {@macro pulumi_compute_get_storage_pool_get_storage_pool_args_doc}
class GetStoragePoolArgs {
  /// The name of the Storage Pool.
  final pulumi.Input<String> name;

  /// The project in which the Storage Pool exists. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The zone where the Storage Pool resides.
  final pulumi.Input<String> zone;

  /// Creates a new [GetStoragePoolArgs].
  /// [name] The name of the Storage Pool.
  /// [project] The project in which the Storage Pool exists. If it is not provided, the provider project is used.
  /// [zone] The zone where the Storage Pool resides.
  GetStoragePoolArgs({required this.name, this.project, required this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'project': ?project, 'zone': zone};
  }

  factory GetStoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
