// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_asset_status.dart';
import 'lake_metastore.dart';
import 'lake_metastore_status.dart';

/// Input properties used for looking up and filtering Lake resources.
class LakeState {
  /// Output only. Aggregated status of the underlying assets of the lake.
  final pulumi.Input<List<LakeAssetStatus>>? assetStatuses;
  /// Output only. The time when the lake was created.
  final pulumi.Input<String>? createTime;
  /// Optional. Description of the lake.
  final pulumi.Input<String>? description;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. User-defined labels for the lake.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  final pulumi.Input<LakeMetastore>? metastore;
  /// Output only. Metastore status of the lake.
  final pulumi.Input<List<LakeMetastoreStatus>>? metastoreStatuses;
  /// The name of the lake.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Service account associated with this lake. This service account must be authorized to access or operate on resources managed by the lake.
  final pulumi.Input<String>? serviceAccount;
  /// Output only. Current state of the lake. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final pulumi.Input<String>? state;
  /// Output only. System generated globally unique ID for the lake. This ID will be different if the lake is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// Output only. The time when the lake was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [LakeState].
  /// [assetStatuses] Output only. Aggregated status of the underlying assets of the lake.
  /// [createTime] Output only. The time when the lake was created.
  /// [description] Optional. Description of the lake.
  /// [displayName] Optional. User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional. User-defined labels for the lake.
  /// [location] The location for the resource
  /// [metastore] Optional. Settings to manage lake and Dataproc Metastore service instance association.
  /// [metastoreStatuses] Output only. Metastore status of the lake.
  /// [name] The name of the lake.
  /// [project] The project for the resource
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [serviceAccount] Output only. Service account associated with this lake. This service account must be authorized to access or operate on resources managed by the lake.
  /// [state] Output only. Current state of the lake. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  /// [uid] Output only. System generated globally unique ID for the lake. This ID will be different if the lake is deleted and re-created with the same name.
  /// [updateTime] Output only. The time when the lake was last updated.
  LakeState({
    this.assetStatuses,
    this.createTime,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.metastore,
    this.metastoreStatuses,
    this.name,
    this.project,
    this.pulumiLabels,
    this.serviceAccount,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetStatuses': ?pulumi.Input.mapOptionalInputValue<List<LakeAssetStatus>, List<Map<String, dynamic>>>(assetStatuses, (value) => pulumi.Input.encodeList<LakeAssetStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'metastore': ?pulumi.Input.mapOptionalInputValue<LakeMetastore, Map<String, dynamic>>(metastore, (value) => value.toMap()),
      'metastoreStatuses': ?pulumi.Input.mapOptionalInputValue<List<LakeMetastoreStatus>, List<Map<String, dynamic>>>(metastoreStatuses, (value) => pulumi.Input.encodeList<LakeMetastoreStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceAccount': ?serviceAccount,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory LakeState.fromMap(Map<String, dynamic> map) {
    return LakeState(
      assetStatuses: map['assetStatuses'] == null ? null : (pulumi.Input.decodeList<LakeAssetStatus>(map['assetStatuses']!, (value) => LakeAssetStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metastore: map['metastore'] == null ? null : (LakeMetastore.fromMap((map['metastore']! as Map).cast<String, dynamic>())).input(),
      metastoreStatuses: map['metastoreStatuses'] == null ? null : (pulumi.Input.decodeList<LakeMetastoreStatus>(map['metastoreStatuses']!, (value) => LakeMetastoreStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

