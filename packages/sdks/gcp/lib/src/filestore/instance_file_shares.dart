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

  /// Creates a new [InstanceFileShares].
  /// [capacityGb] File share capacity in GiB. This must be at least 1024 GiB
  /// [name] The name of the fileshare (16 characters or less)
  /// [nfsExportOptions] Nfs Export Options. There is a limit of 10 export options per file share.
  /// [sourceBackup] The resource name of the backup, in the format
  InstanceFileShares({
    required this.capacityGb,
    required this.name,
    this.nfsExportOptions,
    this.sourceBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': capacityGb,
      'name': name,
      'nfsExportOptions': ?pulumi.Input.mapOptionalInputValue<List<InstanceFileSharesNfsExportOption>, List<Map<String, dynamic>>>(nfsExportOptions, (value) => pulumi.Input.encodeList<InstanceFileSharesNfsExportOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceBackup': ?sourceBackup,
    };
  }

  factory InstanceFileShares.fromMap(Map<String, dynamic> map) {
    return InstanceFileShares(
      capacityGb: (map['capacityGb'] as int).input(),
      name: (map['name'] as String).input(),
      nfsExportOptions: map['nfsExportOptions'] == null ? null : (pulumi.Input.decodeList<InstanceFileSharesNfsExportOption>(map['nfsExportOptions'], (value) => InstanceFileSharesNfsExportOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceBackup: map['sourceBackup'] == null ? null : (map['sourceBackup'] as String).input(),
    );
  }
}

