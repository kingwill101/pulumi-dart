// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disks_disk_encryption_setting.dart';

class GetManagedDisksDisk {
  final pulumi.Input<String> createOption;
  /// The ID of the disk access resource for using private endpoints on disks.
  final pulumi.Input<String> diskAccessId;
  /// The ID of the Disk Encryption Set used to encrypt this Managed Disk.
  final pulumi.Input<String> diskEncryptionSetId;
  /// The number of IOPS allowed for this disk, where one operation can transfer between 4k and 256k bytes.
  final pulumi.Input<int> diskIopsReadWrite;
  /// The bandwidth allowed for this disk.
  final pulumi.Input<int> diskMbpsReadWrite;
  /// The size of the Managed Disk in gigabytes.
  final pulumi.Input<int> diskSizeInGb;
  /// An `encryption_settings` block as defined below.
  final pulumi.Input<List<GetManagedDisksDiskEncryptionSetting>> encryptionSettings;
  final pulumi.Input<String> id;
  /// The ID of the source image used for creating this Managed Disk.
  final pulumi.Input<String> imageReferenceId;
  /// The Azure location of the Managed Disk.
  final pulumi.Input<String> location;
  /// The name of the Managed Disk.
  final pulumi.Input<String> name;
  /// Policy for accessing the disk via network.
  final pulumi.Input<String> networkAccessPolicy;
  /// The operating system used for this Managed Disk.
  final pulumi.Input<String> osType;
  /// The ID of an existing Managed Disk which this Disk was created from.
  final pulumi.Input<String> sourceResourceId;
  /// The Source URI for this Managed Disk.
  final pulumi.Input<String> sourceUri;
  /// The ID of the Storage Account where the `source_uri` is located.
  final pulumi.Input<String> storageAccountId;
  /// The storage account type for the Managed Disk.
  final pulumi.Input<String> storageAccountType;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// A list of Availability Zones where the Managed Disk exists.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [GetManagedDisksDisk].
  /// [createOption] Required.
  /// [diskAccessId] The ID of the disk access resource for using private endpoints on disks.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set used to encrypt this Managed Disk.
  /// [diskIopsReadWrite] The number of IOPS allowed for this disk, where one operation can transfer between 4k and 256k bytes.
  /// [diskMbpsReadWrite] The bandwidth allowed for this disk.
  /// [diskSizeInGb] The size of the Managed Disk in gigabytes.
  /// [encryptionSettings] An `encryption_settings` block as defined below.
  /// [id] Required.
  /// [imageReferenceId] The ID of the source image used for creating this Managed Disk.
  /// [location] The Azure location of the Managed Disk.
  /// [name] The name of the Managed Disk.
  /// [networkAccessPolicy] Policy for accessing the disk via network.
  /// [osType] The operating system used for this Managed Disk.
  /// [sourceResourceId] The ID of an existing Managed Disk which this Disk was created from.
  /// [sourceUri] The Source URI for this Managed Disk.
  /// [storageAccountId] The ID of the Storage Account where the `source_uri` is located.
  /// [storageAccountType] The storage account type for the Managed Disk.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zones] A list of Availability Zones where the Managed Disk exists.
  GetManagedDisksDisk({
    required this.createOption,
    required this.diskAccessId,
    required this.diskEncryptionSetId,
    required this.diskIopsReadWrite,
    required this.diskMbpsReadWrite,
    required this.diskSizeInGb,
    required this.encryptionSettings,
    required this.id,
    required this.imageReferenceId,
    required this.location,
    required this.name,
    required this.networkAccessPolicy,
    required this.osType,
    required this.sourceResourceId,
    required this.sourceUri,
    required this.storageAccountId,
    required this.storageAccountType,
    required this.tags,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': createOption,
      'diskAccessId': diskAccessId,
      'diskEncryptionSetId': diskEncryptionSetId,
      'diskIopsReadWrite': diskIopsReadWrite,
      'diskMbpsReadWrite': diskMbpsReadWrite,
      'diskSizeInGb': diskSizeInGb,
      'encryptionSettings': pulumi.Input.mapInputValue<List<GetManagedDisksDiskEncryptionSetting>, List<Map<String, dynamic>>>(encryptionSettings, (value) => pulumi.Input.encodeList<GetManagedDisksDiskEncryptionSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'imageReferenceId': imageReferenceId,
      'location': location,
      'name': name,
      'networkAccessPolicy': networkAccessPolicy,
      'osType': osType,
      'sourceResourceId': sourceResourceId,
      'sourceUri': sourceUri,
      'storageAccountId': storageAccountId,
      'storageAccountType': storageAccountType,
      'tags': tags,
      'zones': zones,
    };
  }

  factory GetManagedDisksDisk.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksDisk(
      createOption: (map['createOption'] as String).input(),
      diskAccessId: (map['diskAccessId'] as String).input(),
      diskEncryptionSetId: (map['diskEncryptionSetId'] as String).input(),
      diskIopsReadWrite: (map['diskIopsReadWrite'] as int).input(),
      diskMbpsReadWrite: (map['diskMbpsReadWrite'] as int).input(),
      diskSizeInGb: (map['diskSizeInGb'] as int).input(),
      encryptionSettings: (pulumi.Input.decodeList<GetManagedDisksDiskEncryptionSetting>(map['encryptionSettings'], (value) => GetManagedDisksDiskEncryptionSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      imageReferenceId: (map['imageReferenceId'] as String).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      networkAccessPolicy: (map['networkAccessPolicy'] as String).input(),
      osType: (map['osType'] as String).input(),
      sourceResourceId: (map['sourceResourceId'] as String).input(),
      sourceUri: (map['sourceUri'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      storageAccountType: (map['storageAccountType'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      zones: ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

