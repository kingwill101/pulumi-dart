// ignore_for_file: unused_element, unnecessary_cast

import 'services_properties_response.dart';
import 'services_resource_response_identity.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateLinkServicesForO365ManagementActivityAPI.
class GetPrivateLinkServicesForO365ManagementActivityAPIResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;
  /// The resource identifier.
  final String id;
  /// Setting indicating whether the service has a managed identity associated with it.
  final ServicesResourceResponseIdentity? identity;
  /// The kind of the service.
  final String kind;
  /// The resource location.
  final String location;
  /// The resource name.
  final String name;
  /// The common properties of a service.
  final ServicesPropertiesResponse properties;
  /// Required property for system data
  final SystemDataResponse systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;

  /// Creates a new [GetPrivateLinkServicesForO365ManagementActivityAPIResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] An etag associated with the resource, used for optimistic concurrency when editing it.
  /// [id] The resource identifier.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [kind] The kind of the service.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [properties] The common properties of a service.
  /// [systemData] Required property for system data
  /// [tags] The resource tags.
  /// [type] The resource type.
  const GetPrivateLinkServicesForO365ManagementActivityAPIResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.identity,
    required this.kind,
    required this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': kind,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPrivateLinkServicesForO365ManagementActivityAPIResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicesForO365ManagementActivityAPIResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ServicesResourceResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: ServicesPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

