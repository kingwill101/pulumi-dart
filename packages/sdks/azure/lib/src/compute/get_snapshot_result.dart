// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_encryption_setting.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  final String? creationOption;
  /// The size of the Snapshotted Disk in GB.
  final int? diskSizeGb;
  final List<GetSnapshotEncryptionSetting>? encryptionSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? osType;
  final String? resourceGroupName;
  /// The reference to an existing snapshot.
  final String? sourceResourceId;
  /// The URI to a Managed or Unmanaged Disk.
  final String? sourceUri;
  /// The ID of an storage account.
  final String? storageAccountId;
  final String? timeCreated;
  /// Whether Trusted Launch is enabled for the Snapshot.
  final bool? trustedLaunchEnabled;

  /// Creates a new [GetSnapshotResult].
  /// [creationOption] Optional.
  /// [diskSizeGb] The size of the Snapshotted Disk in GB.
  /// [encryptionSettings] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [osType] Optional.
  /// [resourceGroupName] Optional.
  /// [sourceResourceId] The reference to an existing snapshot.
  /// [sourceUri] The URI to a Managed or Unmanaged Disk.
  /// [storageAccountId] The ID of an storage account.
  /// [timeCreated] Optional.
  /// [trustedLaunchEnabled] Whether Trusted Launch is enabled for the Snapshot.
  const GetSnapshotResult({
    this.creationOption,
    this.diskSizeGb,
    this.encryptionSettings,
    this.id,
    this.name,
    this.osType,
    this.resourceGroupName,
    this.sourceResourceId,
    this.sourceUri,
    this.storageAccountId,
    this.timeCreated,
    this.trustedLaunchEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationOption': ?creationOption,
      'diskSizeGb': ?diskSizeGb,
      'encryptionSettings': ?(() { final guardedValue = encryptionSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotEncryptionSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'osType': ?osType,
      'resourceGroupName': ?resourceGroupName,
      'sourceResourceId': ?sourceResourceId,
      'sourceUri': ?sourceUri,
      'storageAccountId': ?storageAccountId,
      'timeCreated': ?timeCreated,
      'trustedLaunchEnabled': ?trustedLaunchEnabled,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      creationOption: (() { final guardedValue = map['creationOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotEncryptionSetting>(guardedValue, (value) => GetSnapshotEncryptionSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustedLaunchEnabled: (() { final guardedValue = map['trustedLaunchEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
