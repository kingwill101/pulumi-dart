// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_storage_pool_types_get_storage_pool_types_args_doc}
/// Arguments for getStoragePoolTypes.
/// {@endtemplate}
/// {@macro pulumi_compute_get_storage_pool_types_get_storage_pool_types_args_doc}
class GetStoragePoolTypesArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Name of the storage pool type.
  ///
  ///
  /// - - -
  final pulumi.Input<String> storagePoolType;
  /// The name of the zone.
  final pulumi.Input<String> zone;

  /// Creates a new [GetStoragePoolTypesArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [storagePoolType] Name of the storage pool type.
  /// [zone] The name of the zone.
  const GetStoragePoolTypesArgs({
    this.project,
    required this.storagePoolType,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'storagePoolType': storagePoolType,
      'zone': zone,
    };
  }

  factory GetStoragePoolTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolTypesArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePoolType: pulumi.Input.fromValue(map['storagePoolType'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
