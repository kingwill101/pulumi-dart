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
  const LakeState({
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
      assetStatuses: (() { final guardedValue = map['assetStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LakeAssetStatus>(guardedValue, (value) => LakeAssetStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metastore: (() { final guardedValue = map['metastore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LakeMetastore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metastoreStatuses: (() { final guardedValue = map['metastoreStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LakeMetastoreStatus>(guardedValue, (value) => LakeMetastoreStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

