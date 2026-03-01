// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CacheBlobTarget resources.
class CacheBlobTargetState {
  /// The name of the access policy applied to this target. Defaults to `default`.
  final pulumi.Input<String>? accessPolicyName;
  /// The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cacheName;
  /// The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The client-facing file path of the HPC Cache Blob Target.
  final pulumi.Input<String>? namespacePath;
  /// The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resource_manager_id`.
  final pulumi.Input<String>? storageContainerId;

  /// Creates a new [CacheBlobTargetState].
  /// [accessPolicyName] The name of the access policy applied to this target. Defaults to `default`.
  /// [cacheName] The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  /// [name] The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  /// [namespacePath] The client-facing file path of the HPC Cache Blob Target.
  /// [resourceGroupName] The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  /// [storageContainerId] The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  CacheBlobTargetState({
    pulumi.Output<String>? accessPolicyName,
    pulumi.Output<String>? cacheName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespacePath,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? storageContainerId,
  }) :
      accessPolicyName = pulumi.Input.asOptionalInput<String>(accessPolicyName),
      cacheName = pulumi.Input.asOptionalInput<String>(cacheName),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespacePath = pulumi.Input.asOptionalInput<String>(namespacePath),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storageContainerId = pulumi.Input.asOptionalInput<String>(storageContainerId);

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
      accessPolicyName: map['accessPolicyName'] == null ? null : pulumi.Output.create<String>(map['accessPolicyName'] as String),
      cacheName: map['cacheName'] == null ? null : pulumi.Output.create<String>(map['cacheName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespacePath: map['namespacePath'] == null ? null : pulumi.Output.create<String>(map['namespacePath'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageContainerId: map['storageContainerId'] == null ? null : pulumi.Output.create<String>(map['storageContainerId'] as String),
    );
  }
}

