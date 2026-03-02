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
    this.dataDisks,
    this.hyperVGeneration,
    this.location,
    this.name,
    this.osDisk,
    required this.resourceGroupName,
    this.sourceVirtualMachineId,
    this.tags,
    this.zoneResilient,
  });

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
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<ImageDataDisk>(map['dataDisks']!, (value) => ImageDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : (map['hyperVGeneration']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osDisk: map['osDisk'] == null ? null : (ImageOsDisk.fromMap((map['osDisk']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceVirtualMachineId: map['sourceVirtualMachineId'] == null ? null : (map['sourceVirtualMachineId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zoneResilient: map['zoneResilient'] == null ? null : (map['zoneResilient']! as bool).input(),
    );
  }
}

