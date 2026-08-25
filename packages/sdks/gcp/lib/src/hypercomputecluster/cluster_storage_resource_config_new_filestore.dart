// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_storage_resource_config_new_filestore_file_share.dart';

class ClusterStorageResourceConfigNewFilestore {
  /// Description of the instance. Maximum of 2048 characters.
  final pulumi.Input<String?>? description;
  /// File system shares on the instance. Exactly one file share must be
  /// specified.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterStorageResourceConfigNewFilestoreFileShare>> fileShares;
  /// Name of the Filestore instance to create, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  final pulumi.Input<String> filestore;
  /// Access protocol to use for all file shares in the instance. Defaults to NFS
  /// V3 if not set.
  /// Possible values:
  /// NFSV3
  /// NFSV41
  /// Possible values are: `PROTOCOL_UNSPECIFIED`, `NFSV3`, `NFSV41`.
  final pulumi.Input<String?>? protocol;
  /// Service tier to use for the instance.
  /// Possible values:
  /// ZONAL
  /// REGIONAL
  /// Possible values are: `TIER_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  final pulumi.Input<String> tier;

  /// Creates a new [ClusterStorageResourceConfigNewFilestore].
  /// [description] Description of the instance. Maximum of 2048 characters.
  /// [fileShares] File system shares on the instance. Exactly one file share must be
  /// [filestore] Name of the Filestore instance to create, in the format
  /// [protocol] Access protocol to use for all file shares in the instance. Defaults to NFS
  /// [tier] Service tier to use for the instance.
  const ClusterStorageResourceConfigNewFilestore({
    this.description,
    required this.fileShares,
    required this.filestore,
    this.protocol,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fileShares': pulumi.Input.mapInputValue<List<ClusterStorageResourceConfigNewFilestoreFileShare>, List<Map<String, dynamic>>>(fileShares, (value) => pulumi.Input.encodeList<ClusterStorageResourceConfigNewFilestoreFileShare, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filestore': filestore,
      'protocol': ?protocol,
      'tier': tier,
    };
  }

  factory ClusterStorageResourceConfigNewFilestore.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigNewFilestore(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileShares: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterStorageResourceConfigNewFilestoreFileShare>(map['fileShares']!, (value) => ClusterStorageResourceConfigNewFilestoreFileShare.fromMap((value as Map).cast<String, dynamic>()))),
      filestore: pulumi.Input.fromValue(map['filestore'] as String),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
