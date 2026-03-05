// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hpc_cache_blob_target_cache_blob_target_args_doc}
/// The set of arguments for CacheBlobTarget.
/// {@endtemplate}
/// {@macro pulumi_hpc_cache_blob_target_cache_blob_target_args_doc}
class CacheBlobTargetArgs {
  /// The name of the access policy applied to this target. Defaults to `default`.
  final pulumi.Input<String>? accessPolicyName;
  /// The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> cacheName;
  /// The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The client-facing file path of the HPC Cache Blob Target.
  final pulumi.Input<String> namespacePath;
  /// The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resource_manager_id`.
  final pulumi.Input<String> storageContainerId;

  /// Creates a new [CacheBlobTargetArgs].
  /// [accessPolicyName] The name of the access policy applied to this target. Defaults to `default`.
  /// [cacheName] The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  /// [name] The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  /// [namespacePath] The client-facing file path of the HPC Cache Blob Target.
  /// [resourceGroupName] The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  /// [storageContainerId] The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  CacheBlobTargetArgs({
    this.accessPolicyName,
    required this.cacheName,
    this.name,
    required this.namespacePath,
    required this.resourceGroupName,
    required this.storageContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'cacheName': cacheName,
      'name': ?name,
      'namespacePath': namespacePath,
      'resourceGroupName': resourceGroupName,
      'storageContainerId': storageContainerId,
    };
  }

  factory CacheBlobTargetArgs.fromMap(Map<String, dynamic> map) {
    return CacheBlobTargetArgs(
      accessPolicyName: (() { final guardedValue = map['accessPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheName: pulumi.Input.fromValue(map['cacheName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespacePath: pulumi.Input.fromValue(map['namespacePath'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageContainerId: pulumi.Input.fromValue(map['storageContainerId'] as String),
    );
  }
}

