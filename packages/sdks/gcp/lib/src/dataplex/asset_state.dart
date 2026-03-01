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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataplexZone,
    pulumi.Output<String>? description,
    pulumi.Output<AssetDiscoverySpec>? discoverySpec,
    pulumi.Output<List<AssetDiscoveryStatus>>? discoveryStatuses,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lake,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<AssetResourceSpec>? resourceSpec,
    pulumi.Output<List<AssetResourceStatus>>? resourceStatuses,
    pulumi.Output<List<AssetSecurityStatus>>? securityStatuses,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataplexZone = pulumi.Input.asOptionalInput<String>(dataplexZone),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoverySpec = pulumi.Input.asOptionalInput<AssetDiscoverySpec>(discoverySpec),
      discoveryStatuses = pulumi.Input.asOptionalInput<List<AssetDiscoveryStatus>>(discoveryStatuses),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lake = pulumi.Input.asOptionalInput<String>(lake),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      resourceSpec = pulumi.Input.asOptionalInput<AssetResourceSpec>(resourceSpec),
      resourceStatuses = pulumi.Input.asOptionalInput<List<AssetResourceStatus>>(resourceStatuses),
      securityStatuses = pulumi.Input.asOptionalInput<List<AssetSecurityStatus>>(securityStatuses),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataplexZone: map['dataplexZone'] == null ? null : pulumi.Output.create<String>(map['dataplexZone'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoverySpec: map['discoverySpec'] == null ? null : pulumi.Output.create<AssetDiscoverySpec>(AssetDiscoverySpec.fromMap((map['discoverySpec'] as Map).cast<String, dynamic>())),
      discoveryStatuses: map['discoveryStatuses'] == null ? null : pulumi.Output.create<List<AssetDiscoveryStatus>>(pulumi.Input.decodeList<AssetDiscoveryStatus>(map['discoveryStatuses'], (value) => AssetDiscoveryStatus.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lake: map['lake'] == null ? null : pulumi.Output.create<String>(map['lake'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      resourceSpec: map['resourceSpec'] == null ? null : pulumi.Output.create<AssetResourceSpec>(AssetResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())),
      resourceStatuses: map['resourceStatuses'] == null ? null : pulumi.Output.create<List<AssetResourceStatus>>(pulumi.Input.decodeList<AssetResourceStatus>(map['resourceStatuses'], (value) => AssetResourceStatus.fromMap((value as Map).cast<String, dynamic>()))),
      securityStatuses: map['securityStatuses'] == null ? null : pulumi.Output.create<List<AssetSecurityStatus>>(pulumi.Input.decodeList<AssetSecurityStatus>(map['securityStatuses'], (value) => AssetSecurityStatus.fromMap((value as Map).cast<String, dynamic>()))),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

