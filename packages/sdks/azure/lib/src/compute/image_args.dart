// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_data_disk.dart';
import 'image_os_disk.dart';

/// {@template pulumi_compute_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_compute_image_image_args_doc}
class ImageArgs {
  /// One or more `data_disk` blocks as defined below.
  ///
  /// > **Note:** `data_disk` cannot be set together with `source_virtual_machine_id`.
  final pulumi.Input<List<ImageDataDisk>>? dataDisks;
  /// The Hyper-V Generation Type of the Virtual Machine created from the image as `V1`, `V2`. Defaults to `V1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hyperVGeneration;
  /// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `os_disk` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `os_disk` cannot be set together with `source_virtual_machine_id`.
  final pulumi.Input<ImageOsDisk>? osDisk;
  /// The name of the resource group in which to create the image. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Virtual Machine ID from which to create the image.
  final pulumi.Input<String>? sourceVirtualMachineId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Is zone resiliency enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `zone_resilient` can only be set to `true` if the image is stored in a region that supports availability zones.
  ///
  /// > **Note:** `zone_resilient` cannot be set together with `source_virtual_machine_id`.
  final pulumi.Input<bool>? zoneResilient;

  /// Creates a new [ImageArgs].
  /// [dataDisks] One or more `data_disk` blocks as defined below.
  /// [hyperVGeneration] The Hyper-V Generation Type of the Virtual Machine created from the image as `V1`, `V2`. Defaults to `V1`. Changing this forces a new resource to be created.
  /// [location] Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the image. Changing this forces a new resource to be created.
  /// [osDisk] One or more `os_disk` blocks as defined below. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the image. Changing this forces a new resource to be created.
  /// [sourceVirtualMachineId] The Virtual Machine ID from which to create the image.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneResilient] Is zone resiliency enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ImageArgs({
    pulumi.Output<List<ImageDataDisk>>? dataDisks,
    pulumi.Output<String>? hyperVGeneration,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<ImageOsDisk>? osDisk,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceVirtualMachineId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? zoneResilient,
  }) :
      dataDisks = pulumi.Input.asOptionalInput<List<ImageDataDisk>>(dataDisks),
      hyperVGeneration = pulumi.Input.asOptionalInput<String>(hyperVGeneration),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      osDisk = pulumi.Input.asOptionalInput<ImageOsDisk>(osDisk),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceVirtualMachineId = pulumi.Input.asOptionalInput<String>(sourceVirtualMachineId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneResilient = pulumi.Input.asOptionalInput<bool>(zoneResilient);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<ImageDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<ImageDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hyperVGeneration': ?hyperVGeneration,
      'location': ?location,
      'name': ?name,
      'osDisk': ?pulumi.Input.mapOptionalInputValue<ImageOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sourceVirtualMachineId': ?sourceVirtualMachineId,
      'tags': ?tags,
      'zoneResilient': ?zoneResilient,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<ImageDataDisk>>(pulumi.Input.decodeList<ImageDataDisk>(map['dataDisks'], (value) => ImageDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : pulumi.Output.create<String>(map['hyperVGeneration'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osDisk: map['osDisk'] == null ? null : pulumi.Output.create<ImageOsDisk>(ImageOsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceVirtualMachineId: map['sourceVirtualMachineId'] == null ? null : pulumi.Output.create<String>(map['sourceVirtualMachineId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneResilient: map['zoneResilient'] == null ? null : pulumi.Output.create<bool>(map['zoneResilient'] as bool),
    );
  }
}

