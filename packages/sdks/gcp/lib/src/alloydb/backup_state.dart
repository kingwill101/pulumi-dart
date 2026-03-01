// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_encryption_config.dart';
import 'backup_encryption_info.dart';
import 'backup_expiry_quantity.dart';

/// Input properties used for looking up and filtering Backup resources.
class BackupState {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The ID of the alloydb backup.
  final pulumi.Input<String>? backupId;
  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).
  final pulumi.Input<String>? clusterName;
  /// Output only. The system-generated UID of the cluster which was used to create this resource.
  final pulumi.Input<String>? clusterUid;
  /// Output only. Create time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Output only. Delete time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? deleteTime;
  /// User-provided description of the backup.
  final pulumi.Input<String>? description;
  /// User-settable and human-readable display name for the Backup.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final pulumi.Input<BackupEncryptionConfig>? encryptionConfig;
  /// EncryptionInfo describes the encryption information of a cluster or a backup.
  /// Structure is documented below.
  final pulumi.Input<List<BackupEncryptionInfo>>? encryptionInfos;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Output only. The QuantityBasedExpiry of the backup, specified by the backup's retention policy.
  /// Once the expiry quantity is over retention, the backup is eligible to be garbage collected.
  /// Structure is documented below.
  final pulumi.Input<List<BackupExpiryQuantity>>? expiryQuantities;
  /// Output only. The time at which after the backup is eligible to be garbage collected.
  /// It is the duration specified by the backup's retention policy, added to the backup's createTime.
  final pulumi.Input<String>? expiryTime;
  /// User-defined labels for the alloydb backup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the alloydb backup should reside.
  final pulumi.Input<String>? location;
  /// Output only. The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backupId}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource.
  /// This can happen due to user-triggered updates or system actions like failover or maintenance.
  final pulumi.Input<bool>? reconciling;
  /// Output only. The size of the backup in bytes.
  final pulumi.Input<String>? sizeBytes;
  /// Output only. The current state of the backup.
  final pulumi.Input<String>? state;
  /// The backup type, which suggests the trigger for the backup.
  /// Possible values are: `TYPE_UNSPECIFIED`, `ON_DEMAND`, `AUTOMATED`, `CONTINUOUS`.
  final pulumi.Input<String>? type;
  /// Output only. The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  final pulumi.Input<String>? uid;
  /// Output only. Update time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BackupState].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [backupId] The ID of the alloydb backup.
  /// [clusterName] The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).
  /// [clusterUid] Output only. The system-generated UID of the cluster which was used to create this resource.
  /// [createTime] Output only. Create time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [deleteTime] Output only. Delete time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [description] User-provided description of the backup.
  /// [displayName] User-settable and human-readable display name for the Backup.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionConfig] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [encryptionInfos] EncryptionInfo describes the encryption information of a cluster or a backup.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [expiryQuantities] Output only. The QuantityBasedExpiry of the backup, specified by the backup's retention policy.
  /// [expiryTime] Output only. The time at which after the backup is eligible to be garbage collected.
  /// [labels] User-defined labels for the alloydb backup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [location] The location where the alloydb backup should reside.
  /// [name] Output only. The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backupId}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Output only. Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource.
  /// [sizeBytes] Output only. The size of the backup in bytes.
  /// [state] Output only. The current state of the backup.
  /// [type] The backup type, which suggests the trigger for the backup.
  /// [uid] Output only. The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  /// [updateTime] Output only. Update time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  BackupState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? backupId,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? clusterUid,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<BackupEncryptionConfig>? encryptionConfig,
    pulumi.Output<List<BackupEncryptionInfo>>? encryptionInfos,
    pulumi.Output<String>? etag,
    pulumi.Output<List<BackupExpiryQuantity>>? expiryQuantities,
    pulumi.Output<String>? expiryTime,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? sizeBytes,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      backupId = pulumi.Input.asOptionalInput<String>(backupId),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterUid = pulumi.Input.asOptionalInput<String>(clusterUid),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      encryptionConfig = pulumi.Input.asOptionalInput<BackupEncryptionConfig>(encryptionConfig),
      encryptionInfos = pulumi.Input.asOptionalInput<List<BackupEncryptionInfo>>(encryptionInfos),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      expiryQuantities = pulumi.Input.asOptionalInput<List<BackupExpiryQuantity>>(expiryQuantities),
      expiryTime = pulumi.Input.asOptionalInput<String>(expiryTime),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      sizeBytes = pulumi.Input.asOptionalInput<String>(sizeBytes),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'backupId': ?backupId,
      'clusterName': ?clusterName,
      'clusterUid': ?clusterUid,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<BackupEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'encryptionInfos': ?pulumi.Input.mapOptionalInputValue<List<BackupEncryptionInfo>, List<Map<String, dynamic>>>(encryptionInfos, (value) => pulumi.Input.encodeList<BackupEncryptionInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'expiryQuantities': ?pulumi.Input.mapOptionalInputValue<List<BackupExpiryQuantity>, List<Map<String, dynamic>>>(expiryQuantities, (value) => pulumi.Input.encodeList<BackupExpiryQuantity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expiryTime': ?expiryTime,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'sizeBytes': ?sizeBytes,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory BackupState.fromMap(Map<String, dynamic> map) {
    return BackupState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      backupId: map['backupId'] == null ? null : pulumi.Output.create<String>(map['backupId'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterUid: map['clusterUid'] == null ? null : pulumi.Output.create<String>(map['clusterUid'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<BackupEncryptionConfig>(BackupEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      encryptionInfos: map['encryptionInfos'] == null ? null : pulumi.Output.create<List<BackupEncryptionInfo>>(pulumi.Input.decodeList<BackupEncryptionInfo>(map['encryptionInfos'], (value) => BackupEncryptionInfo.fromMap((value as Map).cast<String, dynamic>()))),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      expiryQuantities: map['expiryQuantities'] == null ? null : pulumi.Output.create<List<BackupExpiryQuantity>>(pulumi.Input.decodeList<BackupExpiryQuantity>(map['expiryQuantities'], (value) => BackupExpiryQuantity.fromMap((value as Map).cast<String, dynamic>()))),
      expiryTime: map['expiryTime'] == null ? null : pulumi.Output.create<String>(map['expiryTime'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      sizeBytes: map['sizeBytes'] == null ? null : pulumi.Output.create<String>(map['sizeBytes'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

