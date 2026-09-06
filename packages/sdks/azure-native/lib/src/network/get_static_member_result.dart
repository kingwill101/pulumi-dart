// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStaticMember.
class GetStaticMemberResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The provisioning state of the scope assignment resource.
  final String? provisioningState;
  /// Resource region.
  final String? region;
  /// Resource Id.
  final String? resourceId;
  /// The system metadata related to this resource.
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

  /// Creates a new [GetStaticMemberResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  /// [region] Resource region.
  /// [resourceId] Resource Id.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  const GetStaticMemberResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.provisioningState,
    this.region,
    this.resourceId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'region': ?region,
      'resourceId': ?resourceId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetStaticMemberResult.fromMap(Map<String, dynamic> map) {
    return GetStaticMemberResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
