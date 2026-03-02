// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_storage_pool_args_doc}
/// Arguments for getStoragePool.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_storage_pool_args_doc}
class GetStoragePoolArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storagePool;
  final pulumi.Input<String> zone;

  /// Creates a new [GetStoragePoolArgs].
  /// [project] Optional.
  /// [storagePool] Required.
  /// [zone] Required.
  GetStoragePoolArgs({
    this.project,
    required this.storagePool,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'storagePool': storagePool,
      'zone': zone,
    };
  }

  factory GetStoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      storagePool: (map['storagePool'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

