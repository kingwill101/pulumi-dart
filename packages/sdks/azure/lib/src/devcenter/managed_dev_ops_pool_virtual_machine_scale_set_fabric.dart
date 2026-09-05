// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_virtual_machine_scale_set_fabric_image.dart';
import 'managed_dev_ops_pool_virtual_machine_scale_set_fabric_security.dart';
import 'managed_dev_ops_pool_virtual_machine_scale_set_fabric_storage.dart';

class ManagedDevOpsPoolVirtualMachineScaleSetFabric {
  /// One or more `image` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolVirtualMachineScaleSetFabricImage>> images;
  /// The storage account type for the OS disk. Possible values are `Premium`, `Standard`, and `StandardSSD`. Defaults to `Standard`.
  final pulumi.Input<String?>? osDiskStorageAccountType;
  /// A `security` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity?>? security;
  /// The Azure SKU name of the machines in the pool.
  ///
  /// &gt; **Note:** Please refer to the [Microsoft Documentation](https://learn.microsoft.com/azure/devops/managed-devops-pools/configure-pool-settings?view=azure-devops&tabs=azure-portal#agent-size) for more information about available SKUs.
  final pulumi.Input<String> skuName;
  /// A `storage` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolVirtualMachineScaleSetFabricStorage?>? storage;
  /// The subnet ID on which to put all machines created in the pool.
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [ManagedDevOpsPoolVirtualMachineScaleSetFabric].
  /// [images] One or more `image` blocks as defined below.
  /// [osDiskStorageAccountType] The storage account type for the OS disk. Possible values are `Premium`, `Standard`, and `StandardSSD`. Defaults to `Standard`.
  /// [security] A `security` block as defined below.
  /// [skuName] The Azure SKU name of the machines in the pool.
  /// [storage] A `storage` block as defined below.
  /// [subnetId] The subnet ID on which to put all machines created in the pool.
  const ManagedDevOpsPoolVirtualMachineScaleSetFabric({
    required this.images,
    this.osDiskStorageAccountType,
    this.security,
    required this.skuName,
    this.storage,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': pulumi.Input.mapInputValue<List<ManagedDevOpsPoolVirtualMachineScaleSetFabricImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolVirtualMachineScaleSetFabricImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDiskStorageAccountType': ?osDiskStorageAccountType,
      'security': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
      'skuName': skuName,
      'storage': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolVirtualMachineScaleSetFabricStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'subnetId': ?subnetId,
    };
  }

  factory ManagedDevOpsPoolVirtualMachineScaleSetFabric.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolVirtualMachineScaleSetFabric(
      images: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolVirtualMachineScaleSetFabricImage>(map['images']!, (value) => ManagedDevOpsPoolVirtualMachineScaleSetFabricImage.fromMap((value as Map).cast<String, dynamic>()))),
      osDiskStorageAccountType: (() { final guardedValue = map['osDiskStorageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolVirtualMachineScaleSetFabricStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
