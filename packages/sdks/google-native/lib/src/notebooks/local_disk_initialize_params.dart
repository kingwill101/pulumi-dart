// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_disk_initialize_params_disk_type.dart';

/// Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new runtime. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
class LocalDiskInitializeParams {
  /// Optional. Provide this property when creating the disk.
  final pulumi.Input<String>? description;
  /// Optional. Specifies the disk name. If not specified, the default is to use the name of the instance. If the disk with the instance name exists already in the given zone/region, a new name will be automatically generated.
  final pulumi.Input<String>? diskName;
  /// Optional. Specifies the size of the disk in base-2 GB. If not specified, the disk will be the same size as the image (usually 10GB). If specified, the size must be equal to or larger than 10GB. Default 100 GB.
  final pulumi.Input<String>? diskSizeGb;
  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final pulumi.Input<LocalDiskInitializeParamsDiskType>? diskType;
  /// Optional. Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [LocalDiskInitializeParams].
  /// [description] Optional. Provide this property when creating the disk.
  /// [diskName] Optional. Specifies the disk name. If not specified, the default is to use the name of the instance. If the disk with the instance name exists already in the given zone/region, a new name will be automatically generated.
  /// [diskSizeGb] Optional. Specifies the size of the disk in base-2 GB. If not specified, the disk will be the same size as the image (usually 10GB). If specified, the size must be equal to or larger than 10GB. Default 100 GB.
  /// [diskType] Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [labels] Optional. Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  const LocalDiskInitializeParams({
    this.description,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskName': ?diskName,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?pulumi.Input.mapOptionalInputValue<LocalDiskInitializeParamsDiskType, String>(diskType, (value) => value.wireValue),
      'labels': ?labels,
    };
  }

  factory LocalDiskInitializeParams.fromMap(Map<String, dynamic> map) {
    return LocalDiskInitializeParams(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalDiskInitializeParamsDiskType.fromValue(guardedValue as String)); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
