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
  final pulumi.Input<String?>? createTime;
  /// The zone for the resource
  final pulumi.Input<String?>? dataplexZone;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Description of the asset.
  final pulumi.Input<String?>? description;
  /// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final pulumi.Input<AssetDiscoverySpec?>? discoverySpec;
  /// Output only. Status of the discovery feature applied to data referenced by this asset.
  final pulumi.Input<List<AssetDiscoveryStatus>?>? discoveryStatuses;
  /// Optional. User friendly display name.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Optional. User defined labels for the asset.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The lake for the resource
  final pulumi.Input<String?>? lake;
  /// The location for the resource
  final pulumi.Input<String?>? location;
  /// The name of the asset.
  final pulumi.Input<String?>? name;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Required. Immutable. Specification of the resource that is referenced by this asset.
  final pulumi.Input<AssetResourceSpec?>? resourceSpec;
  /// Output only. Status of the resource referenced by this asset.
  final pulumi.Input<List<AssetResourceStatus>?>? resourceStatuses;
  /// Output only. Status of the security policy applied to resource referenced by this asset.
  final pulumi.Input<List<AssetSecurityStatus>?>? securityStatuses;
  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final pulumi.Input<String?>? state;
  /// Output only. System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  final pulumi.Input<String?>? uid;
  /// Output only. The time when the asset was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AssetState].
  /// [createTime] Output only. The time when the asset was created.
  /// [dataplexZone] The zone for the resource
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
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
  const AssetState({
    this.createTime,
    this.dataplexZone,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataplexZone: (() { final guardedValue = map['dataplexZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoverySpec: (() { final guardedValue = map['discoverySpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      discoveryStatuses: (() { final guardedValue = map['discoveryStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetDiscoveryStatus>(guardedValue, (value) => AssetDiscoveryStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lake: (() { final guardedValue = map['lake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceSpec: (() { final guardedValue = map['resourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceStatuses: (() { final guardedValue = map['resourceStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetResourceStatus>(guardedValue, (value) => AssetResourceStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      securityStatuses: (() { final guardedValue = map['securityStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetSecurityStatus>(guardedValue, (value) => AssetSecurityStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
