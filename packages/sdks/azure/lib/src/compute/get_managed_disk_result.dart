// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disk_encryption_setting.dart';

/// Result data returned by getManagedDisk.
class GetManagedDiskResult {
  final String createOption;
  /// The ID of the disk access resource for using private endpoints on disks.
  final String diskAccessId;
  /// The ID of the Disk Encryption Set used to encrypt this Managed Disk.
  final String diskEncryptionSetId;
  /// The number of IOPS allowed for this disk, where one operation can transfer between 4k and 256k bytes.
  final int diskIopsReadWrite;
  /// The bandwidth allowed for this disk.
  final int diskMbpsReadWrite;
  /// The size of the Managed Disk in gigabytes.
  final int diskSizeGb;
  /// A `encryptionSettings` block as defined below.
  final List<GetManagedDiskEncryptionSetting> encryptionSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ID of the source image used for creating this Managed Disk.
  final String imageReferenceId;
  /// The Azure location of the Managed Disk.
  final String location;
  final String name;
  /// Policy for accessing the disk via network.
  final String networkAccessPolicy;
  /// The operating system used for this Managed Disk.
  final String osType;
  final String resourceGroupName;
  /// The ID of an existing Managed Disk which this Disk was created from.
  final String sourceResourceId;
  /// The Source URI for this Managed Disk.
  final String sourceUri;
  /// The ID of the Storage Account where the `sourceUri` is located.
  final String storageAccountId;
  /// The storage account type for the Managed Disk.
  final String storageAccountType;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// A list of Availability Zones where the Managed Disk exists.
  final List<String> zones;

  /// Creates a new [GetManagedDiskResult].
  /// [createOption] Required.
  /// [diskAccessId] The ID of the disk access resource for using private endpoints on disks.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set used to encrypt this Managed Disk.
  /// [diskIopsReadWrite] The number of IOPS allowed for this disk, where one operation can transfer between 4k and 256k bytes.
  /// [diskMbpsReadWrite] The bandwidth allowed for this disk.
  /// [diskSizeGb] The size of the Managed Disk in gigabytes.
  /// [encryptionSettings] A `encryptionSettings` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageReferenceId] The ID of the source image used for creating this Managed Disk.
  /// [location] The Azure location of the Managed Disk.
  /// [name] Required.
  /// [networkAccessPolicy] Policy for accessing the disk via network.
  /// [osType] The operating system used for this Managed Disk.
  /// [resourceGroupName] Required.
  /// [sourceResourceId] The ID of an existing Managed Disk which this Disk was created from.
  /// [sourceUri] The Source URI for this Managed Disk.
  /// [storageAccountId] The ID of the Storage Account where the `sourceUri` is located.
  /// [storageAccountType] The storage account type for the Managed Disk.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zones] A list of Availability Zones where the Managed Disk exists.
  const GetManagedDiskResult({
    required this.createOption,
    required this.diskAccessId,
    required this.diskEncryptionSetId,
    required this.diskIopsReadWrite,
    required this.diskMbpsReadWrite,
    required this.diskSizeGb,
    required this.encryptionSettings,
    required this.id,
    required this.imageReferenceId,
    required this.location,
    required this.name,
    required this.networkAccessPolicy,
    required this.osType,
    required this.resourceGroupName,
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
      'diskSizeGb': diskSizeGb,
      'encryptionSettings': pulumi.Input.encodeList<GetManagedDiskEncryptionSetting, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'id': id,
      'imageReferenceId': imageReferenceId,
      'location': location,
      'name': name,
      'networkAccessPolicy': networkAccessPolicy,
      'osType': osType,
      'resourceGroupName': resourceGroupName,
      'sourceResourceId': sourceResourceId,
      'sourceUri': sourceUri,
      'storageAccountId': storageAccountId,
      'storageAccountType': storageAccountType,
      'tags': tags,
      'zones': zones,
    };
  }

  factory GetManagedDiskResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDiskResult(
      createOption: map['createOption'] as String,
      diskAccessId: map['diskAccessId'] as String,
      diskEncryptionSetId: map['diskEncryptionSetId'] as String,
      diskIopsReadWrite: map['diskIopsReadWrite'] as int,
      diskMbpsReadWrite: map['diskMbpsReadWrite'] as int,
      diskSizeGb: map['diskSizeGb'] as int,
      encryptionSettings: pulumi.Input.decodeList<GetManagedDiskEncryptionSetting>(map['encryptionSettings']!, (value) => GetManagedDiskEncryptionSetting.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageReferenceId: map['imageReferenceId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkAccessPolicy: map['networkAccessPolicy'] as String,
      osType: map['osType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
      sourceUri: map['sourceUri'] as String,
      storageAccountId: map['storageAccountId'] as String,
      storageAccountType: map['storageAccountType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
