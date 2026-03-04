// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_export_options_file_v1beta1.dart';

/// {@template pulumi_file_v1beta1_share_args_doc}
/// The set of arguments for Share.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_share_args_doc}
class ShareArgs {
  /// Immutable. Full name of the Cloud Filestore Backup resource that this Share is restored from, in the format of projects/{project_id}/locations/{location_id}/backups/{backup_id}. Empty, if the Share is created from scratch and not restored from a backup.
  final pulumi.Input<String>? backup;

  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. Must be greater than 0.
  final pulumi.Input<String>? capacityGb;

  /// A description of the share with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> instanceId;

  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The mount name of the share. Must be 63 characters or less and consist of uppercase or lowercase letters, numbers, and underscores.
  final pulumi.Input<String>? mountName;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final pulumi.Input<List<NfsExportOptionsFileV1beta1>>? nfsExportOptions;
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the share. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final pulumi.Input<String> shareId;

  /// Creates a new [ShareArgs].
  /// [backup] Immutable. Full name of the Cloud Filestore Backup resource that this Share is restored from, in the format of projects/{project_id}/locations/{location_id}/backups/{backup_id}. Empty, if the Share is created from scratch and not restored from a backup.
  /// [capacityGb] File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. Must be greater than 0.
  /// [description] A description of the share with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [instanceId] Required.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [mountName] The mount name of the share. Must be 63 characters or less and consist of uppercase or lowercase letters, numbers, and underscores.
  /// [nfsExportOptions] Nfs Export Options. There is a limit of 10 export options per file share.
  /// [project] Optional.
  /// [shareId] Required. The ID to use for the share. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  ShareArgs({
    this.backup,
    this.capacityGb,
    this.description,
    required this.instanceId,
    this.labels,
    this.location,
    this.mountName,
    this.nfsExportOptions,
    this.project,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?backup,
      'capacityGb': ?capacityGb,
      'description': ?description,
      'instanceId': instanceId,
      'labels': ?labels,
      'location': ?location,
      'mountName': ?mountName,
      'nfsExportOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<NfsExportOptionsFileV1beta1>,
            List<Map<String, dynamic>>
          >(
            nfsExportOptions,
            (value) =>
                pulumi.Input.encodeList<
                  NfsExportOptionsFileV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'shareId': shareId,
    };
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      backup: (() {
        final guardedValue = map['backup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      capacityGb: (() {
        final guardedValue = map['capacityGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountName: (() {
        final guardedValue = map['mountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nfsExportOptions: (() {
        final guardedValue = map['nfsExportOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NfsExportOptionsFileV1beta1>(
            guardedValue,
            (value) => NfsExportOptionsFileV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}
