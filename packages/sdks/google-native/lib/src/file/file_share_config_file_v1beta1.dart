// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_export_options_file_v1beta1.dart';

/// File share configuration for the instance.
class FileShareConfigFileV1beta1 {
  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.
  final pulumi.Input<String>? capacityGb;
  /// The name of the file share (must be 32 characters or less for Enterprise and High Scale SSD tiers and 16 characters or less for all other tiers).
  final pulumi.Input<String>? name;
  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final pulumi.Input<List<NfsExportOptionsFileV1beta1>>? nfsExportOptions;
  /// The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.
  final pulumi.Input<String>? sourceBackup;

  /// Creates a new [FileShareConfigFileV1beta1].
  /// [capacityGb] File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.
  /// [name] The name of the file share (must be 32 characters or less for Enterprise and High Scale SSD tiers and 16 characters or less for all other tiers).
  /// [nfsExportOptions] Nfs Export Options. There is a limit of 10 export options per file share.
  /// [sourceBackup] The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.
  FileShareConfigFileV1beta1({
    this.capacityGb,
    this.name,
    this.nfsExportOptions,
    this.sourceBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': ?capacityGb,
      'name': ?name,
      'nfsExportOptions': ?pulumi.Input.mapOptionalInputValue<List<NfsExportOptionsFileV1beta1>, List<Map<String, dynamic>>>(nfsExportOptions, (value) => pulumi.Input.encodeList<NfsExportOptionsFileV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceBackup': ?sourceBackup,
    };
  }

  factory FileShareConfigFileV1beta1.fromMap(Map<String, dynamic> map) {
    return FileShareConfigFileV1beta1(
      capacityGb: map['capacityGb'] == null ? null : (map['capacityGb']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nfsExportOptions: map['nfsExportOptions'] == null ? null : (pulumi.Input.decodeList<NfsExportOptionsFileV1beta1>(map['nfsExportOptions']!, (value) => NfsExportOptionsFileV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceBackup: map['sourceBackup'] == null ? null : (map['sourceBackup']! as String).input(),
    );
  }
}

