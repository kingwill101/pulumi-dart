// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disk_encryption_setting.dart';

/// Result data returned by getManagedDisk.
class GetManagedDiskResult {
  final String? createOption;
  /// The ID of the disk access resource for using private endpoints on disks.
  final String? diskAccessId;
  /// The ID of the Disk Encryption Set used to encrypt this Managed Disk.
  final String? diskEncryptionSetId;
  /// The number of IOPS allowed for this disk, where one operation can transfer between 4k and 256k bytes.
  final int? diskIopsReadWrite;
  /// The bandwidth allowed for this disk.
  final int? diskMbpsReadWrite;
  /// The size of the Managed Disk in gigabytes.
  final int? diskSizeGb;
  /// A `encryptionSettings` block as defined below.
  final List<GetManagedDiskEncryptionSetting>? encryptionSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the source image used for creating this Managed Disk.
  final String? imageReferenceId;
  /// The Azure location of the Managed Disk.
  final String? location;
  final String? name;
  /// Policy for accessing the disk via network.
  final String? networkAccessPolicy;
  /// The operating system used for this Managed Disk.
  final String? osType;
  final String? resourceGroupName;
  /// The ID of an existing Managed Disk which this Disk was created from.
  final String? sourceResourceId;
  /// The Source URI for this Managed Disk.
  final String? sourceUri;
  /// The ID of the Storage Account where the `sourceUri` is located.
  final String? storageAccountId;
  /// The storage account type for the Managed Disk.
  final String? storageAccountType;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// A list of Availability Zones where the Managed Disk exists.
  final List<String>? zones;

  /// Creates a new [GetManagedDiskResult].
  /// [createOption] Optional.
  /// [diskAccessId] The ID of the disk access resource for using private endpoints on disks.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set used to encrypt this Managed Disk.
  /// [diskIopsReadWrite] The number of IOPS allowed for this disk, where one operation can transfer between 4k and 256k bytes.
  /// [diskMbpsReadWrite] The bandwidth allowed for this disk.
  /// [diskSizeGb] The size of the Managed Disk in gigabytes.
  /// [encryptionSettings] A `encryptionSettings` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageReferenceId] The ID of the source image used for creating this Managed Disk.
  /// [location] The Azure location of the Managed Disk.
  /// [name] Optional.
  /// [networkAccessPolicy] Policy for accessing the disk via network.
  /// [osType] The operating system used for this Managed Disk.
  /// [resourceGroupName] Optional.
  /// [sourceResourceId] The ID of an existing Managed Disk which this Disk was created from.
  /// [sourceUri] The Source URI for this Managed Disk.
  /// [storageAccountId] The ID of the Storage Account where the `sourceUri` is located.
  /// [storageAccountType] The storage account type for the Managed Disk.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zones] A list of Availability Zones where the Managed Disk exists.
  const GetManagedDiskResult({
    this.createOption,
    this.diskAccessId,
    this.diskEncryptionSetId,
    this.diskIopsReadWrite,
    this.diskMbpsReadWrite,
    this.diskSizeGb,
    this.encryptionSettings,
    this.id,
    this.imageReferenceId,
    this.location,
    this.name,
    this.networkAccessPolicy,
    this.osType,
    this.resourceGroupName,
    this.sourceResourceId,
    this.sourceUri,
    this.storageAccountId,
    this.storageAccountType,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': ?createOption,
      'diskAccessId': ?diskAccessId,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskIopsReadWrite': ?diskIopsReadWrite,
      'diskMbpsReadWrite': ?diskMbpsReadWrite,
      'diskSizeGb': ?diskSizeGb,
      'encryptionSettings': ?(() { final guardedValue = encryptionSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDiskEncryptionSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'imageReferenceId': ?imageReferenceId,
      'location': ?location,
      'name': ?name,
      'networkAccessPolicy': ?networkAccessPolicy,
      'osType': ?osType,
      'resourceGroupName': ?resourceGroupName,
      'sourceResourceId': ?sourceResourceId,
      'sourceUri': ?sourceUri,
      'storageAccountId': ?storageAccountId,
      'storageAccountType': ?storageAccountType,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory GetManagedDiskResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDiskResult(
      createOption: (() { final guardedValue = map['createOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskAccessId: (() { final guardedValue = map['diskAccessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskIopsReadWrite: (() { final guardedValue = map['diskIopsReadWrite']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      diskMbpsReadWrite: (() { final guardedValue = map['diskMbpsReadWrite']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDiskEncryptionSetting>(guardedValue, (value) => GetManagedDiskEncryptionSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageReferenceId: (() { final guardedValue = map['imageReferenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkAccessPolicy: (() { final guardedValue = map['networkAccessPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
