// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_storage_pool_types_get_storage_pool_types_args_doc}
/// Arguments for getStoragePoolTypes.
/// {@endtemplate}
/// {@macro pulumi_compute_get_storage_pool_types_get_storage_pool_types_args_doc}
class GetStoragePoolTypesArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storagePoolType;
  final pulumi.Input<String> zone;

  /// Creates a new [GetStoragePoolTypesArgs].
  /// [project] Optional.
  /// [storagePoolType] Required.
  /// [zone] Required.
  GetStoragePoolTypesArgs({
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
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storagePoolType: pulumi.Input.fromValue(map['storagePoolType'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
