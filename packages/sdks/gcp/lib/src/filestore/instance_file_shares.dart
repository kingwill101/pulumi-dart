// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_file_shares_nfs_export_option.dart';

class InstanceFileShares {
  /// File share capacity in GiB. This must be at least 1024 GiB
  /// for the standard tier, or 2560 GiB for the premium tier.
  final pulumi.Input<int> capacityGb;
  /// The name of the fileshare (16 characters or less)
  final pulumi.Input<String> name;
  /// Nfs Export Options. There is a limit of 10 export options per file share.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceFileSharesNfsExportOption>>? nfsExportOptions;
  /// The resource name of the backup, in the format
  /// projects/{projectId}/locations/{locationId}/backups/{backupId},
  /// that this file share has been restored from.
  final pulumi.Input<String>? sourceBackup;
  /// The resource name of the BackupDR backup, in the format
  /// `projects/{project_id}/locations/{location_id}/backupVaults/{backupvault_id}/dataSources/{datasource_id}/backups/{backup_id}`,
  /// that this file share has been restored from.
  final pulumi.Input<String>? sourceBackupdrBackup;

  /// Creates a new [InstanceFileShares].
  /// [capacityGb] File share capacity in GiB. This must be at least 1024 GiB
  /// [name] The name of the fileshare (16 characters or less)
  /// [nfsExportOptions] Nfs Export Options. There is a limit of 10 export options per file share.
  /// [sourceBackup] The resource name of the backup, in the format
  /// [sourceBackupdrBackup] The resource name of the BackupDR backup, in the format
  const InstanceFileShares({
    required this.capacityGb,
    required this.name,
    this.nfsExportOptions,
    this.sourceBackup,
    this.sourceBackupdrBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': capacityGb,
      'name': name,
      'nfsExportOptions': ?pulumi.Input.mapOptionalInputValue<List<InstanceFileSharesNfsExportOption>, List<Map<String, dynamic>>>(nfsExportOptions, (value) => pulumi.Input.encodeList<InstanceFileSharesNfsExportOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceBackup': ?sourceBackup,
      'sourceBackupdrBackup': ?sourceBackupdrBackup,
    };
  }

  factory InstanceFileShares.fromMap(Map<String, dynamic> map) {
    return InstanceFileShares(
      capacityGb: pulumi.Input.fromValue(map['capacityGb'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      nfsExportOptions: (() { final guardedValue = map['nfsExportOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFileSharesNfsExportOption>(guardedValue, (value) => InstanceFileSharesNfsExportOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceBackup: (() { final guardedValue = map['sourceBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceBackupdrBackup: (() { final guardedValue = map['sourceBackupdrBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
