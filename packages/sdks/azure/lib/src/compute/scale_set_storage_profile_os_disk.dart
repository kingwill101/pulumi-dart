// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetStorageProfileOsDisk {
  /// Specifies the caching requirements. Possible values include: `None` (default), `ReadOnly`, `ReadWrite`.
  final pulumi.Input<String>? caching;
  /// Specifies how the virtual machine should be created. The only possible option is `FromImage`.
  final pulumi.Input<String> createOption;
  /// Specifies the blob URI for user image. A virtual machine scale set creates an os disk in the same container as the user image.
  /// Updating the osDisk image causes the existing disk to be deleted and a new one created with the new image. If the VM scale set is in Manual upgrade mode then the virtual machines are not updated until they have manualUpgrade applied to them.
  /// When setting this field `os_type` needs to be specified. Cannot be used when `vhd_containers`, `managed_disk_type` or `storage_profile_image_reference` are specified.
  final pulumi.Input<String>? image;
  /// Specifies the type of managed disk to create. Value you must be either `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`. Cannot be used when `vhd_containers` or `image` is specified.
  final pulumi.Input<String>? managedDiskType;
  /// Specifies the disk name. Must be specified when using unmanaged disk ('managed_disk_type' property not set).
  final pulumi.Input<String>? name;
  /// Specifies the operating system Type, valid values are windows, Linux.
  final pulumi.Input<String>? osType;
  /// Specifies the VHD URI. Cannot be used when `image` or `managed_disk_type` is specified.
  final pulumi.Input<List<String>>? vhdContainers;

  /// Creates a new [ScaleSetStorageProfileOsDisk].
  /// [caching] Specifies the caching requirements. Possible values include: `None` (default), `ReadOnly`, `ReadWrite`.
  /// [createOption] Specifies how the virtual machine should be created. The only possible option is `FromImage`.
  /// [image] Specifies the blob URI for user image. A virtual machine scale set creates an os disk in the same container as the user image.
  /// [managedDiskType] Specifies the type of managed disk to create. Value you must be either `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`. Cannot be used when `vhd_containers` or `image` is specified.
  /// [name] Specifies the disk name. Must be specified when using unmanaged disk ('managed_disk_type' property not set).
  /// [osType] Specifies the operating system Type, valid values are windows, Linux.
  /// [vhdContainers] Specifies the VHD URI. Cannot be used when `image` or `managed_disk_type` is specified.
  ScaleSetStorageProfileOsDisk({
    this.caching,
    required this.createOption,
    this.image,
    this.managedDiskType,
    this.name,
    this.osType,
    this.vhdContainers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': createOption,
      'image': ?image,
      'managedDiskType': ?managedDiskType,
      'name': ?name,
      'osType': ?osType,
      'vhdContainers': ?vhdContainers,
    };
  }

  factory ScaleSetStorageProfileOsDisk.fromMap(Map<String, dynamic> map) {
    return ScaleSetStorageProfileOsDisk(
      caching: map['caching'] == null ? null : (map['caching']! as String).input(),
      createOption: (map['createOption'] as String).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      managedDiskType: map['managedDiskType'] == null ? null : (map['managedDiskType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      vhdContainers: map['vhdContainers'] == null ? null : ((map['vhdContainers']! as List).cast<String>()).input(),
    );
  }
}

