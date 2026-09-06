// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkManagerRoutingConfiguration.
class GetNetworkManagerRoutingConfigurationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A description of the routing configuration.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Unique identifier for this resource.
  final String? resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

  /// Creates a new [GetNetworkManagerRoutingConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the routing configuration.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  const GetNetworkManagerRoutingConfigurationResult({
    this.azureApiVersion,
    this.description,
    this.etag,
    this.id,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetNetworkManagerRoutingConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerRoutingConfigurationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
