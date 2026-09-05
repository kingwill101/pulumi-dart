// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDevOpsPoolVirtualMachineScaleSetFabricStorage {
  /// The type of caching for the data disk. Possible values are `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String?>? caching;
  /// The initial disk size in gigabytes. Possible values range between `1` and `32767`.
  final pulumi.Input<int> diskSizeInGb;
  /// The drive letter for the data disk.
  final pulumi.Input<String?>? driveLetter;
  /// The storage account type of the data disk. Possible values are `Premium_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, and `StandardSSD_ZRS`. Defaults to `Standard_LRS`.
  final pulumi.Input<String?>? storageAccountType;

  /// Creates a new [ManagedDevOpsPoolVirtualMachineScaleSetFabricStorage].
  /// [caching] The type of caching for the data disk. Possible values are `ReadOnly` and `ReadWrite`.
  /// [diskSizeInGb] The initial disk size in gigabytes. Possible values range between `1` and `32767`.
  /// [driveLetter] The drive letter for the data disk.
  /// [storageAccountType] The storage account type of the data disk. Possible values are `Premium_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, and `StandardSSD_ZRS`. Defaults to `Standard_LRS`.
  const ManagedDevOpsPoolVirtualMachineScaleSetFabricStorage({
    this.caching,
    required this.diskSizeInGb,
    this.driveLetter,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'diskSizeInGb': diskSizeInGb,
      'driveLetter': ?driveLetter,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ManagedDevOpsPoolVirtualMachineScaleSetFabricStorage.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolVirtualMachineScaleSetFabricStorage(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeInGb: pulumi.Input.fromValue((map['diskSizeInGb'] as num).toInt()),
      driveLetter: (() { final guardedValue = map['driveLetter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
