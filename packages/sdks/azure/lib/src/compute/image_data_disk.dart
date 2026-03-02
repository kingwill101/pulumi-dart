// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageDataDisk {
  /// Specifies the URI in Azure storage of the blob that you want to use to create the image.
  final pulumi.Input<String>? blobUri;
  /// Specifies the caching mode as `ReadWrite`, `ReadOnly`, or `None`. Defaults to `None`.
  final pulumi.Input<String>? caching;
  /// The ID of the Disk Encryption Set which should be used to encrypt this disk. Changing this forces a new resource to be created.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// Specifies the logical unit number of the data disk.
  final pulumi.Input<int>? lun;
  /// Specifies the ID of the managed disk resource that you want to use to create the image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedDiskId;
  /// Specifies the size of the image to be created. The target size can't be smaller than the source size.
  final pulumi.Input<int>? sizeGb;
  /// The type of Storage Disk to use. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageType;

  /// Creates a new [ImageDataDisk].
  /// [blobUri] Specifies the URI in Azure storage of the blob that you want to use to create the image.
  /// [caching] Specifies the caching mode as `ReadWrite`, `ReadOnly`, or `None`. Defaults to `None`.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to encrypt this disk. Changing this forces a new resource to be created.
  /// [lun] Specifies the logical unit number of the data disk.
  /// [managedDiskId] Specifies the ID of the managed disk resource that you want to use to create the image. Changing this forces a new resource to be created.
  /// [sizeGb] Specifies the size of the image to be created. The target size can't be smaller than the source size.
  /// [storageType] The type of Storage Disk to use. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`. Changing this forces a new resource to be created.
  ImageDataDisk({
    this.blobUri,
    this.caching,
    this.diskEncryptionSetId,
    this.lun,
    this.managedDiskId,
    this.sizeGb,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': ?blobUri,
      'caching': ?caching,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'lun': ?lun,
      'managedDiskId': ?managedDiskId,
      'sizeGb': ?sizeGb,
      'storageType': storageType,
    };
  }

  factory ImageDataDisk.fromMap(Map<String, dynamic> map) {
    return ImageDataDisk(
      blobUri: map['blobUri'] == null ? null : (map['blobUri'] as String).input(),
      caching: map['caching'] == null ? null : (map['caching'] as String).input(),
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId'] as String).input(),
      lun: map['lun'] == null ? null : (map['lun'] as int).input(),
      managedDiskId: map['managedDiskId'] == null ? null : (map['managedDiskId'] as String).input(),
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb'] as int).input(),
      storageType: (map['storageType'] as String).input(),
    );
  }
}

