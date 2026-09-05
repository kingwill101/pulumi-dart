// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage {
  /// The type of caching for the data disk.
  final pulumi.Input<String> caching;
  /// The initial disk size in gigabytes.
  final pulumi.Input<int> diskSizeInGb;
  /// The drive letter for the data disk.
  final pulumi.Input<String> driveLetter;
  /// The storage account type of the data disk.
  final pulumi.Input<String> storageAccountType;

  /// Creates a new [GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage].
  /// [caching] The type of caching for the data disk.
  /// [diskSizeInGb] The initial disk size in gigabytes.
  /// [driveLetter] The drive letter for the data disk.
  /// [storageAccountType] The storage account type of the data disk.
  const GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage({
    required this.caching,
    required this.diskSizeInGb,
    required this.driveLetter,
    required this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'diskSizeInGb': diskSizeInGb,
      'driveLetter': driveLetter,
      'storageAccountType': storageAccountType,
    };
  }

  factory GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolVirtualMachineScaleSetFabricStorage(
      caching: pulumi.Input.fromValue(map['caching'] as String),
      diskSizeInGb: pulumi.Input.fromValue((map['diskSizeInGb'] as num).toInt()),
      driveLetter: pulumi.Input.fromValue(map['driveLetter'] as String),
      storageAccountType: pulumi.Input.fromValue(map['storageAccountType'] as String),
    );
  }
}
