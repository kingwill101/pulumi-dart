// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_asset_status.dart';
import 'zone_discovery_spec.dart';
import 'zone_resource_spec.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  /// Output only. Aggregated status of the underlying assets of the zone.
  final pulumi.Input<List<ZoneAssetStatus>?>? assetStatuses;
  /// Output only. The time when the zone was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Description of the zone.
  final pulumi.Input<String?>? description;
  /// Required. Specification of the discovery feature applied to data in this zone.
  final pulumi.Input<ZoneDiscoverySpec?>? discoverySpec;
  /// Optional. User friendly display name.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Optional. User defined labels for the zone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The lake for the resource
  final pulumi.Input<String?>? lake;
  /// The location for the resource
  final pulumi.Input<String?>? location;
  /// The name of the zone.
  final pulumi.Input<String?>? name;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  final pulumi.Input<ZoneResourceSpec?>? resourceSpec;
  /// Output only. Current state of the zone. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final pulumi.Input<String?>? state;
  /// Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  final pulumi.Input<String?>? type;
  /// Output only. System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  final pulumi.Input<String?>? uid;
  /// Output only. The time when the zone was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ZoneState].
  /// [assetStatuses] Output only. Aggregated status of the underlying assets of the zone.
  /// [createTime] Output only. The time when the zone was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
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
  const ZoneState({
    this.assetStatuses,
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      assetStatuses: (() { final guardedValue = map['assetStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneAssetStatus>(guardedValue, (value) => ZoneAssetStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoverySpec: (() { final guardedValue = map['discoverySpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lake: (() { final guardedValue = map['lake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceSpec: (() { final guardedValue = map['resourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
