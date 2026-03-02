// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_type_alloydb_v1alpha.dart';
import 'encryption_config_alloydb_v1alpha.dart';

/// {@template pulumi_alloydb_v1alpha_backup_alloydb_v1alpha_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_backup_alloydb_v1alpha_args_doc}
class BackupAlloydbV1alphaArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;
  /// Required. ID of the requesting object.
  final pulumi.Input<String> backupId;
  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  final pulumi.Input<String> clusterName;
  /// User-provided description of the backup.
  final pulumi.Input<String>? description;
  /// User-settable and human-readable display name for the Backup.
  final pulumi.Input<String>? displayName;
  /// Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfigAlloydbV1alpha>? encryptionConfig;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The backup type, which suggests the trigger for the backup.
  final pulumi.Input<BackupTypeAlloydbV1alpha>? type;

  /// Creates a new [BackupAlloydbV1alphaArgs].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [backupId] Required. ID of the requesting object.
  /// [clusterName] The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  /// [description] User-provided description of the backup.
  /// [displayName] User-settable and human-readable display name for the Backup.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [labels] Labels as key value pairs
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The backup type, which suggests the trigger for the backup.
  BackupAlloydbV1alphaArgs({
    this.annotations,
    required this.backupId,
    required this.clusterName,
    this.description,
    this.displayName,
    this.encryptionConfig,
    this.etag,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'backupId': backupId,
      'clusterName': clusterName,
      'description': ?description,
      'displayName': ?displayName,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfigAlloydbV1alpha, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'type': ?pulumi.Input.mapOptionalInputValue<BackupTypeAlloydbV1alpha, String>(type, (value) => value.value),
    };
  }

  factory BackupAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return BackupAlloydbV1alphaArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      backupId: (map['backupId'] as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EncryptionConfigAlloydbV1alpha.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      type: map['type'] == null ? null : (BackupTypeAlloydbV1alpha.fromValue(map['type'] as String)).input(),
    );
  }
}

