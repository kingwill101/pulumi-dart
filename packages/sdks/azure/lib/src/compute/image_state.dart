// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_data_disk.dart';
import 'image_os_disk.dart';

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// One or more `data_disk` blocks as defined below.
  ///
  /// &gt; **Note:** `data_disk` cannot be set together with `source_virtual_machine_id`.
  final pulumi.Input<List<ImageDataDisk>>? dataDisks;

  /// The Hyper-V Generation Type of the Virtual Machine created from the image as `V1`, `V2`. Defaults to `V1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hyperVGeneration;

  /// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of the image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// One or more `os_disk` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `os_disk` cannot be set together with `source_virtual_machine_id`.
  final pulumi.Input<ImageOsDisk>? osDisk;

  /// The name of the resource group in which to create the image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The Virtual Machine ID from which to create the image.
  final pulumi.Input<String>? sourceVirtualMachineId;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Is zone resiliency enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `zone_resilient` can only be set to `true` if the image is stored in a region that supports availability zones.
  ///
  /// &gt; **Note:** `zone_resilient` cannot be set together with `source_virtual_machine_id`.
  final pulumi.Input<bool>? zoneResilient;

  /// Creates a new [ImageState].
  /// [dataDisks] One or more `data_disk` blocks as defined below.
  /// [hyperVGeneration] The Hyper-V Generation Type of the Virtual Machine created from the image as `V1`, `V2`. Defaults to `V1`. Changing this forces a new resource to be created.
  /// [location] Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the image. Changing this forces a new resource to be created.
  /// [osDisk] One or more `os_disk` blocks as defined below. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the image. Changing this forces a new resource to be created.
  /// [sourceVirtualMachineId] The Virtual Machine ID from which to create the image.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneResilient] Is zone resiliency enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ImageState({
    this.dataDisks,
    this.hyperVGeneration,
    this.location,
    this.name,
    this.osDisk,
    this.resourceGroupName,
    this.sourceVirtualMachineId,
    this.tags,
    this.zoneResilient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<ImageDataDisk>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<ImageDataDisk, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'hyperVGeneration': ?hyperVGeneration,
      'location': ?location,
      'name': ?name,
      'osDisk':
          ?pulumi.Input.mapOptionalInputValue<
            ImageOsDisk,
            Map<String, dynamic>
          >(osDisk, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'sourceVirtualMachineId': ?sourceVirtualMachineId,
      'tags': ?tags,
      'zoneResilient': ?zoneResilient,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      dataDisks: (() {
        final guardedValue = map['dataDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ImageDataDisk>(
            guardedValue,
            (value) =>
                ImageDataDisk.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      hyperVGeneration: (() {
        final guardedValue = map['hyperVGeneration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osDisk: (() {
        final guardedValue = map['osDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImageOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceVirtualMachineId: (() {
        final guardedValue = map['sourceVirtualMachineId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zoneResilient: (() {
        final guardedValue = map['zoneResilient'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
