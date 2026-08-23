// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_asset_discovery_spec_response.dart';
import 'google_cloud_dataplex_v1_asset_discovery_status_response.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec_response.dart';
import 'google_cloud_dataplex_v1_asset_resource_status_response.dart';
import 'google_cloud_dataplex_v1_asset_security_status_response.dart';

/// Result data returned by getAsset.
class GetAssetResult {
  /// The time when the asset was created.
  final String createTime;
  /// Optional. Description of the asset.
  final String description;
  /// Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final GoogleCloudDataplexV1AssetDiscoverySpecResponse discoverySpec;
  /// Status of the discovery feature applied to data referenced by this asset.
  final GoogleCloudDataplexV1AssetDiscoveryStatusResponse discoveryStatus;
  /// Optional. User friendly display name.
  final String displayName;
  /// Optional. User defined labels for the asset.
  final Map<String, String> labels;
  /// The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  final String name;
  /// Specification of the resource that is referenced by this asset.
  final GoogleCloudDataplexV1AssetResourceSpecResponse resourceSpec;
  /// Status of the resource referenced by this asset.
  final GoogleCloudDataplexV1AssetResourceStatusResponse resourceStatus;
  /// Status of the security policy applied to resource referenced by this asset.
  final GoogleCloudDataplexV1AssetSecurityStatusResponse securityStatus;
  /// Current state of the asset.
  final String state;
  /// System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  final String uid;
  /// The time when the asset was last updated.
  final String updateTime;

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
    required this.createTime,
    required this.description,
    required this.discoverySpec,
    required this.discoveryStatus,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.resourceSpec,
    required this.resourceStatus,
    required this.securityStatus,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'discoverySpec': discoverySpec.toMap(),
      'discoveryStatus': discoveryStatus.toMap(),
      'displayName': displayName,
      'labels': labels,
      'name': name,
      'resourceSpec': resourceSpec.toMap(),
      'resourceStatus': resourceStatus.toMap(),
      'securityStatus': securityStatus.toMap(),
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetAssetResult.fromMap(Map<String, dynamic> map) {
    return GetAssetResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      discoverySpec: GoogleCloudDataplexV1AssetDiscoverySpecResponse.fromMap((map['discoverySpec']! as Map).cast<String, dynamic>()),
      discoveryStatus: GoogleCloudDataplexV1AssetDiscoveryStatusResponse.fromMap((map['discoveryStatus']! as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      resourceSpec: GoogleCloudDataplexV1AssetResourceSpecResponse.fromMap((map['resourceSpec']! as Map).cast<String, dynamic>()),
      resourceStatus: GoogleCloudDataplexV1AssetResourceStatusResponse.fromMap((map['resourceStatus']! as Map).cast<String, dynamic>()),
      securityStatus: GoogleCloudDataplexV1AssetSecurityStatusResponse.fromMap((map['securityStatus']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
