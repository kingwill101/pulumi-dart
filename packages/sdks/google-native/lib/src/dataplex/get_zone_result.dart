// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_asset_status_response.dart';
import 'google_cloud_dataplex_v1_zone_discovery_spec_response.dart';
import 'google_cloud_dataplex_v1_zone_resource_spec_response.dart';

/// Result data returned by getZone.
class GetZoneResult {
  /// Aggregated status of the underlying assets of the zone.
  final GoogleCloudDataplexV1AssetStatusResponse? assetStatus;
  /// The time when the zone was created.
  final String? createTime;
  /// Optional. Description of the zone.
  final String? description;
  /// Optional. Specification of the discovery feature applied to data in this zone.
  final GoogleCloudDataplexV1ZoneDiscoverySpecResponse? discoverySpec;
  /// Optional. User friendly display name.
  final String? displayName;
  /// Optional. User defined labels for the zone.
  final Map<String, String>? labels;
  /// The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  final String? name;
  /// Specification of the resources that are referenced by the assets within this zone.
  final GoogleCloudDataplexV1ZoneResourceSpecResponse? resourceSpec;
  /// Current state of the zone.
  final String? state;
  /// Immutable. The type of the zone.
  final String? type;
  /// System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  final String? uid;
  /// The time when the zone was last updated.
  final String? updateTime;

  /// Creates a new [GetZoneResult].
  /// [assetStatus] Aggregated status of the underlying assets of the zone.
  /// [createTime] The time when the zone was created.
  /// [description] Optional. Description of the zone.
  /// [discoverySpec] Optional. Specification of the discovery feature applied to data in this zone.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User defined labels for the zone.
  /// [name] The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  /// [resourceSpec] Specification of the resources that are referenced by the assets within this zone.
  /// [state] Current state of the zone.
  /// [type] Immutable. The type of the zone.
  /// [uid] System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  /// [updateTime] The time when the zone was last updated.
  const GetZoneResult({
    this.assetStatus,
    this.createTime,
    this.description,
    this.discoverySpec,
    this.displayName,
    this.labels,
    this.name,
    this.resourceSpec,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetStatus': ?assetStatus?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'discoverySpec': ?discoverySpec?.toMap(),
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'resourceSpec': ?resourceSpec?.toMap(),
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      assetStatus: (() { final guardedValue = map['assetStatus']; if (guardedValue == null) return null; return GoogleCloudDataplexV1AssetStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoverySpec: (() { final guardedValue = map['discoverySpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1ZoneDiscoverySpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceSpec: (() { final guardedValue = map['resourceSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1ZoneResourceSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
