// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams {
  /// Provide this property when creating the disk.
  final pulumi.Input<String>? description;
  /// Specifies the disk name. If not specified, the default is
  /// to use the name of the instance. If the disk with the
  /// instance name exists already in the given zone/region, a
  /// new name will be automatically generated.
  final pulumi.Input<String>? diskName;
  /// Specifies the size of the disk in base-2 GB. If not
  /// specified, the disk will be the same size as the image
  /// (usually 10GB). If specified, the size must be equal to
  /// or larger than 10GB. Default 100 GB.
  final pulumi.Input<int>? diskSizeGb;
  /// The type of the boot disk attached to this runtime,
  /// defaults to standard persistent disk. For valid values,
  /// see `https://cloud.google.com/vertex-ai/docs/workbench/
  /// reference/rest/v1/projects.locations.runtimes#disktype`
  final pulumi.Input<String>? diskType;
  /// Labels to apply to this disk. These can be later modified
  /// by the disks.setLabels method. This field is only
  /// applicable for persistent disks.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams].
  /// [description] Provide this property when creating the disk.
  /// [diskName] Specifies the disk name. If not specified, the default is
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB. If not
  /// [diskType] The type of the boot disk attached to this runtime,
  /// [labels] Labels to apply to this disk. These can be later modified
  const RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams({
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
      'diskType': ?diskType,
      'labels': ?labels,
    };
  }

  factory RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams.fromMap(Map<String, dynamic> map) {
    return RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

