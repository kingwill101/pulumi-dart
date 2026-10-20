// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_export_options_response_file_v1beta1.dart';

/// Result data returned by getShare.
class GetShareResult {
  /// Immutable. Full name of the Cloud Filestore Backup resource that this Share is restored from, in the format of projects/{project_id}/locations/{location_id}/backups/{backup_id}. Empty, if the Share is created from scratch and not restored from a backup.
  final String? backup;
  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. Must be greater than 0.
  final String? capacityGb;
  /// The time when the share was created.
  final String? createTime;
  /// A description of the share with 2048 characters or less. Requests with longer descriptions will be rejected.
  final String? description;
  /// Resource labels to represent user provided metadata.
  final Map<String, String>? labels;
  /// The mount name of the share. Must be 63 characters or less and consist of uppercase or lowercase letters, numbers, and underscores.
  final String? mountName;
  /// The resource name of the share, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/shares/{share_id}`.
  final String? name;
  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final List<NfsExportOptionsResponseFileV1beta1>? nfsExportOptions;
  /// The share state.
  final String? state;

  /// Creates a new [GetShareResult].
  /// [backup] Immutable. Full name of the Cloud Filestore Backup resource that this Share is restored from, in the format of projects/{project_id}/locations/{location_id}/backups/{backup_id}. Empty, if the Share is created from scratch and not restored from a backup.
  /// [capacityGb] File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. Must be greater than 0.
  /// [createTime] The time when the share was created.
  /// [description] A description of the share with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [labels] Resource labels to represent user provided metadata.
  /// [mountName] The mount name of the share. Must be 63 characters or less and consist of uppercase or lowercase letters, numbers, and underscores.
  /// [name] The resource name of the share, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/shares/{share_id}`.
  /// [nfsExportOptions] Nfs Export Options. There is a limit of 10 export options per file share.
  /// [state] The share state.
  const GetShareResult({
    this.backup,
    this.capacityGb,
    this.createTime,
    this.description,
    this.labels,
    this.mountName,
    this.name,
    this.nfsExportOptions,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?backup,
      'capacityGb': ?capacityGb,
      'createTime': ?createTime,
      'description': ?description,
      'labels': ?labels,
      'mountName': ?mountName,
      'name': ?name,
      'nfsExportOptions': ?(() { final guardedValue = nfsExportOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<NfsExportOptionsResponseFileV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityGb: (() { final guardedValue = map['capacityGb']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mountName: (() { final guardedValue = map['mountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nfsExportOptions: (() { final guardedValue = map['nfsExportOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NfsExportOptionsResponseFileV1beta1>(guardedValue, (value) => NfsExportOptionsResponseFileV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
