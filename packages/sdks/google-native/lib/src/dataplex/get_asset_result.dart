// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_asset_discovery_spec_response.dart';
import 'google_cloud_dataplex_v1_asset_discovery_status_response.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec_response.dart';
import 'google_cloud_dataplex_v1_asset_resource_status_response.dart';
import 'google_cloud_dataplex_v1_asset_security_status_response.dart';

/// Result data returned by getAsset.
class GetAssetResult {
  /// The time when the asset was created.
  final String? createTime;
  /// Optional. Description of the asset.
  final String? description;
  /// Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final GoogleCloudDataplexV1AssetDiscoverySpecResponse? discoverySpec;
  /// Status of the discovery feature applied to data referenced by this asset.
  final GoogleCloudDataplexV1AssetDiscoveryStatusResponse? discoveryStatus;
  /// Optional. User friendly display name.
  final String? displayName;
  /// Optional. User defined labels for the asset.
  final Map<String, String>? labels;
  /// The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  final String? name;
  /// Specification of the resource that is referenced by this asset.
  final GoogleCloudDataplexV1AssetResourceSpecResponse? resourceSpec;
  /// Status of the resource referenced by this asset.
  final GoogleCloudDataplexV1AssetResourceStatusResponse? resourceStatus;
  /// Status of the security policy applied to resource referenced by this asset.
  final GoogleCloudDataplexV1AssetSecurityStatusResponse? securityStatus;
  /// Current state of the asset.
  final String? state;
  /// System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  final String? uid;
  /// The time when the asset was last updated.
  final String? updateTime;

  /// Creates a new [GetAssetResult].
  /// [createTime] The time when the asset was created.
  /// [description] Optional. Description of the asset.
  /// [discoverySpec] Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  /// [discoveryStatus] Status of the discovery feature applied to data referenced by this asset.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User defined labels for the asset.
  /// [name] The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  /// [resourceSpec] Specification of the resource that is referenced by this asset.
  /// [resourceStatus] Status of the resource referenced by this asset.
  /// [securityStatus] Status of the security policy applied to resource referenced by this asset.
  /// [state] Current state of the asset.
  /// [uid] System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  /// [updateTime] The time when the asset was last updated.
  const GetAssetResult({
    this.createTime,
    this.description,
    this.discoverySpec,
    this.discoveryStatus,
    this.displayName,
    this.labels,
    this.name,
    this.resourceSpec,
    this.resourceStatus,
    this.securityStatus,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'discoverySpec': ?discoverySpec?.toMap(),
      'discoveryStatus': ?discoveryStatus?.toMap(),
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'resourceSpec': ?resourceSpec?.toMap(),
      'resourceStatus': ?resourceStatus?.toMap(),
      'securityStatus': ?securityStatus?.toMap(),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetAssetResult.fromMap(Map<String, dynamic> map) {
    return GetAssetResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoverySpec: (() { final guardedValue = map['discoverySpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1AssetDiscoverySpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      discoveryStatus: (() { final guardedValue = map['discoveryStatus']; if (guardedValue == null) return null; return GoogleCloudDataplexV1AssetDiscoveryStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceSpec: (() { final guardedValue = map['resourceSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1AssetResourceSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceStatus: (() { final guardedValue = map['resourceStatus']; if (guardedValue == null) return null; return GoogleCloudDataplexV1AssetResourceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      securityStatus: (() { final guardedValue = map['securityStatus']; if (guardedValue == null) return null; return GoogleCloudDataplexV1AssetSecurityStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
