// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_asset_status.dart';
import 'zone_discovery_spec.dart';
import 'zone_resource_spec.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  /// Output only. Aggregated status of the underlying assets of the zone.
  final pulumi.Input<List<ZoneAssetStatus>>? assetStatuses;
  /// Output only. The time when the zone was created.
  final pulumi.Input<String>? createTime;
  /// Optional. Description of the zone.
  final pulumi.Input<String>? description;
  /// Required. Specification of the discovery feature applied to data in this zone.
  final pulumi.Input<ZoneDiscoverySpec>? discoverySpec;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. User defined labels for the zone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The lake for the resource
  final pulumi.Input<String>? lake;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The name of the zone.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  final pulumi.Input<ZoneResourceSpec>? resourceSpec;
  /// Output only. Current state of the zone. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final pulumi.Input<String>? state;
  /// Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  final pulumi.Input<String>? type;
  /// Output only. System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// Output only. The time when the zone was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ZoneState].
  /// [assetStatuses] Output only. Aggregated status of the underlying assets of the zone.
  /// [createTime] Output only. The time when the zone was created.
  /// [description] Optional. Description of the zone.
  /// [discoverySpec] Required. Specification of the discovery feature applied to data in this zone.
  /// [displayName] Optional. User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional. User defined labels for the zone.
  /// [lake] The lake for the resource
  /// [location] The location for the resource
  /// [name] The name of the zone.
  /// [project] The project for the resource
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [resourceSpec] Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  /// [state] Output only. Current state of the zone. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  /// [type] Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  /// [uid] Output only. System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  /// [updateTime] Output only. The time when the zone was last updated.
  ZoneState({
    this.assetStatuses,
    this.createTime,
    this.description,
    this.discoverySpec,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.lake,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.resourceSpec,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetStatuses': ?pulumi.Input.mapOptionalInputValue<List<ZoneAssetStatus>, List<Map<String, dynamic>>>(assetStatuses, (value) => pulumi.Input.encodeList<ZoneAssetStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'discoverySpec': ?pulumi.Input.mapOptionalInputValue<ZoneDiscoverySpec, Map<String, dynamic>>(discoverySpec, (value) => value.toMap()),
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'lake': ?lake,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resourceSpec': ?pulumi.Input.mapOptionalInputValue<ZoneResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ZoneState.fromMap(Map<String, dynamic> map) {
    return ZoneState(
      assetStatuses: map['assetStatuses'] == null ? null : (pulumi.Input.decodeList<ZoneAssetStatus>(map['assetStatuses'], (value) => ZoneAssetStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      discoverySpec: map['discoverySpec'] == null ? null : (ZoneDiscoverySpec.fromMap((map['discoverySpec'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      lake: map['lake'] == null ? null : (map['lake'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      resourceSpec: map['resourceSpec'] == null ? null : (ZoneResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

