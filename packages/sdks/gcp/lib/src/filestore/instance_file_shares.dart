// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_file_shares_nfs_export_option.dart';

class InstanceFileShares {
  /// File share capacity in GiB. Acceptable instance capacities for each tier are as follows:
  /// * BASIC_HDD: 1024-65433 GiB in 1 GiB increments or its multiples.
  /// * BASIC_SSD: 2560-65433 GiB in 1 GiB increments or its multiples.
  /// * HIGH_SCALE_SSD: 10240-102400 GiB in 2560 GiB increments or its multiples.
  /// * ZONAL: 100-102400 GiB (100-10239 GiB in 1 GiB increments or its multiples; 10240-102400 GiB in 2560 GiB increments or its multiples).
  /// * ENTERPRISE: 1024-10240 GiB in 256 GiB increments or its multiples.
  /// * REGIONAL: 1024-102400 GiB (100-102400 GiB in supported regions): ((100 or 1024)-10239 GiB in 1 GiB increments or its multiples; 10240-102400 GiB in 2560 GiB increments or its multiples).
  final pulumi.Input<int> capacityGb;
  /// The name of the fileshare (16 characters or less)
  final pulumi.Input<String> name;
  /// Nfs Export Options. There is a limit of 10 export options per file share.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceFileSharesNfsExportOption>?>? nfsExportOptions;
  /// The resource name of the backup, in the format
  /// projects/{projectId}/locations/{locationId}/backups/{backupId},
  /// that this file share has been restored from.
  final pulumi.Input<String?>? sourceBackup;
  /// The resource name of the BackupDR backup, in the format
  /// `projects/{project_id}/locations/{location_id}/backupVaults/{backupvault_id}/dataSources/{datasource_id}/backups/{backup_id}`,
  /// that this file share has been restored from.
  final pulumi.Input<String?>? sourceBackupdrBackup;

  /// Creates a new [InstanceFileShares].
  /// [capacityGb] File share capacity in GiB. Acceptable instance capacities for each tier are as follows:
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
      capacityGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['capacityGb'])),
      name: pulumi.Input.fromValue(map['name'] as String),
      nfsExportOptions: (() { final guardedValue = map['nfsExportOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFileSharesNfsExportOption>(guardedValue, (value) => InstanceFileSharesNfsExportOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceBackup: (() { final guardedValue = map['sourceBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceBackupdrBackup: (() { final guardedValue = map['sourceBackupdrBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
