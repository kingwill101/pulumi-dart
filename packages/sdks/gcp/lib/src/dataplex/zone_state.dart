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
    pulumi.Output<List<ZoneAssetStatus>>? assetStatuses,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<ZoneDiscoverySpec>? discoverySpec,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lake,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<ZoneResourceSpec>? resourceSpec,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      assetStatuses = pulumi.Input.asOptionalInput<List<ZoneAssetStatus>>(assetStatuses),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoverySpec = pulumi.Input.asOptionalInput<ZoneDiscoverySpec>(discoverySpec),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lake = pulumi.Input.asOptionalInput<String>(lake),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      resourceSpec = pulumi.Input.asOptionalInput<ZoneResourceSpec>(resourceSpec),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      assetStatuses: map['assetStatuses'] == null ? null : pulumi.Output.create<List<ZoneAssetStatus>>(pulumi.Input.decodeList<ZoneAssetStatus>(map['assetStatuses'], (value) => ZoneAssetStatus.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoverySpec: map['discoverySpec'] == null ? null : pulumi.Output.create<ZoneDiscoverySpec>(ZoneDiscoverySpec.fromMap((map['discoverySpec'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lake: map['lake'] == null ? null : pulumi.Output.create<String>(map['lake'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      resourceSpec: map['resourceSpec'] == null ? null : pulumi.Output.create<ZoneResourceSpec>(ZoneResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

