// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_discovery_spec.dart';
import 'asset_discovery_status.dart';
import 'asset_resource_spec.dart';
import 'asset_resource_status.dart';
import 'asset_security_status.dart';

/// Input properties used for looking up and filtering Asset resources.
class AssetState {
  /// Output only. The time when the asset was created.
  final pulumi.Input<String>? createTime;
  /// The zone for the resource
  final pulumi.Input<String>? dataplexZone;
  /// Optional. Description of the asset.
  final pulumi.Input<String>? description;
  /// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final pulumi.Input<AssetDiscoverySpec>? discoverySpec;
  /// Output only. Status of the discovery feature applied to data referenced by this asset.
  final pulumi.Input<List<AssetDiscoveryStatus>>? discoveryStatuses;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. User defined labels for the asset.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The lake for the resource
  final pulumi.Input<String>? lake;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The name of the asset.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Required. Immutable. Specification of the resource that is referenced by this asset.
  final pulumi.Input<AssetResourceSpec>? resourceSpec;
  /// Output only. Status of the resource referenced by this asset.
  final pulumi.Input<List<AssetResourceStatus>>? resourceStatuses;
  /// Output only. Status of the security policy applied to resource referenced by this asset.
  final pulumi.Input<List<AssetSecurityStatus>>? securityStatuses;
  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final pulumi.Input<String>? state;
  /// Output only. System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// Output only. The time when the asset was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AssetState].
  /// [createTime] Output only. The time when the asset was created.
  /// [dataplexZone] The zone for the resource
  /// [description] Optional. Description of the asset.
  /// [discoverySpec] Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  /// [discoveryStatuses] Output only. Status of the discovery feature applied to data referenced by this asset.
  /// [displayName] Optional. User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional. User defined labels for the asset.
  /// [lake] The lake for the resource
  /// [location] The location for the resource
  /// [name] The name of the asset.
  /// [project] The project for the resource
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [resourceSpec] Required. Immutable. Specification of the resource that is referenced by this asset.
  /// [resourceStatuses] Output only. Status of the resource referenced by this asset.
  /// [securityStatuses] Output only. Status of the security policy applied to resource referenced by this asset.
  /// [state] Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  /// [uid] Output only. System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  /// [updateTime] Output only. The time when the asset was last updated.
  AssetState({
    this.createTime,
    this.dataplexZone,
    this.description,
    this.discoverySpec,
    this.discoveryStatuses,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.lake,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.resourceSpec,
    this.resourceStatuses,
    this.securityStatuses,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataplexZone': ?dataplexZone,
      'description': ?description,
      'discoverySpec': ?pulumi.Input.mapOptionalInputValue<AssetDiscoverySpec, Map<String, dynamic>>(discoverySpec, (value) => value.toMap()),
      'discoveryStatuses': ?pulumi.Input.mapOptionalInputValue<List<AssetDiscoveryStatus>, List<Map<String, dynamic>>>(discoveryStatuses, (value) => pulumi.Input.encodeList<AssetDiscoveryStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'lake': ?lake,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resourceSpec': ?pulumi.Input.mapOptionalInputValue<AssetResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'resourceStatuses': ?pulumi.Input.mapOptionalInputValue<List<AssetResourceStatus>, List<Map<String, dynamic>>>(resourceStatuses, (value) => pulumi.Input.encodeList<AssetResourceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityStatuses': ?pulumi.Input.mapOptionalInputValue<List<AssetSecurityStatus>, List<Map<String, dynamic>>>(securityStatuses, (value) => pulumi.Input.encodeList<AssetSecurityStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory AssetState.fromMap(Map<String, dynamic> map) {
    return AssetState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dataplexZone: map['dataplexZone'] == null ? null : (map['dataplexZone'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      discoverySpec: map['discoverySpec'] == null ? null : (AssetDiscoverySpec.fromMap((map['discoverySpec'] as Map).cast<String, dynamic>())).input(),
      discoveryStatuses: map['discoveryStatuses'] == null ? null : (pulumi.Input.decodeList<AssetDiscoveryStatus>(map['discoveryStatuses'], (value) => AssetDiscoveryStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      lake: map['lake'] == null ? null : (map['lake'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      resourceSpec: map['resourceSpec'] == null ? null : (AssetResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())).input(),
      resourceStatuses: map['resourceStatuses'] == null ? null : (pulumi.Input.decodeList<AssetResourceStatus>(map['resourceStatuses'], (value) => AssetResourceStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityStatuses: map['securityStatuses'] == null ? null : (pulumi.Input.decodeList<AssetSecurityStatus>(map['securityStatuses'], (value) => AssetSecurityStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

