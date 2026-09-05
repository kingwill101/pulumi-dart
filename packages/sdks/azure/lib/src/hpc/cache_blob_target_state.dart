// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CacheBlobTarget resources.
class CacheBlobTargetState {
  /// The name of the access policy applied to this target. Defaults to `default`.
  final pulumi.Input<String?>? accessPolicyName;
  /// The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? cacheName;
  /// The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The client-facing file path of the HPC Cache Blob Target.
  final pulumi.Input<String?>? namespacePath;
  /// The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resourceManagerId`.
  final pulumi.Input<String?>? storageContainerId;

  /// Creates a new [CacheBlobTargetState].
  /// [accessPolicyName] The name of the access policy applied to this target. Defaults to `default`.
  /// [cacheName] The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  /// [name] The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  /// [namespacePath] The client-facing file path of the HPC Cache Blob Target.
  /// [resourceGroupName] The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  /// [storageContainerId] The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  const CacheBlobTargetState({
    this.accessPolicyName,
    this.cacheName,
    this.name,
    this.namespacePath,
    this.resourceGroupName,
    this.storageContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'cacheName': ?cacheName,
      'name': ?name,
      'namespacePath': ?namespacePath,
      'resourceGroupName': ?resourceGroupName,
      'storageContainerId': ?storageContainerId,
    };
  }

  factory CacheBlobTargetState.fromMap(Map<String, dynamic> map) {
    return CacheBlobTargetState(
      accessPolicyName: (() { final guardedValue = map['accessPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheName: (() { final guardedValue = map['cacheName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespacePath: (() { final guardedValue = map['namespacePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerId: (() { final guardedValue = map['storageContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
