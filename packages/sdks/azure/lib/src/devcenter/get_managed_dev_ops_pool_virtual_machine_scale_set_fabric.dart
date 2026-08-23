// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_virtual_machine_scale_set_fabric_image.dart';
import 'get_managed_dev_ops_pool_virtual_machine_scale_set_fabric_security.dart';
import 'get_managed_dev_ops_pool_virtual_machine_scale_set_fabric_storage.dart';

class GetManagedDevOpsPoolVirtualMachineScaleSetFabric {
  /// One or more `image` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage>> images;
  /// The storage account type for the OS disk.
  final pulumi.Input<String> osDiskStorageAccountType;
  /// A `security` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity>> securities;
  /// The Azure SKU of the machines in the pool.
  final pulumi.Input<String> skuName;
  /// A `storage` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage>> storages;
  /// The ID of the subnet associated with the Managed DevOps Pool.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetManagedDevOpsPoolVirtualMachineScaleSetFabric].
  /// [images] One or more `image` blocks as defined below.
  /// [osDiskStorageAccountType] The storage account type for the OS disk.
  /// [securities] A `security` block as defined below.
  /// [skuName] The Azure SKU of the machines in the pool.
  /// [storages] A `storage` block as defined below.
  /// [subnetId] The ID of the subnet associated with the Managed DevOps Pool.
  const GetManagedDevOpsPoolVirtualMachineScaleSetFabric({
    required this.images,
    required this.osDiskStorageAccountType,
    required this.securities,
    required this.skuName,
    required this.storages,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDiskStorageAccountType': osDiskStorageAccountType,
      'securities': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity>, List<Map<String, dynamic>>>(securities, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skuName': skuName,
      'storages': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage>, List<Map<String, dynamic>>>(storages, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetId': subnetId,
    };
  }

  factory GetManagedDevOpsPoolVirtualMachineScaleSetFabric.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolVirtualMachineScaleSetFabric(
      images: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage>(map['images']!, (value) => GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage.fromMap((value as Map).cast<String, dynamic>()))),
      osDiskStorageAccountType: pulumi.Input.fromValue(map['osDiskStorageAccountType'] as String),
      securities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity>(map['securities']!, (value) => GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurity.fromMap((value as Map).cast<String, dynamic>()))),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      storages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage>(map['storages']!, (value) => GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage.fromMap((value as Map).cast<String, dynamic>()))),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
