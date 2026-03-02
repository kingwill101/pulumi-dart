// ignore_for_file: unused_element, unnecessary_cast

import 'ground_stations_properties_response_global_communications_site.dart';
import 'system_data_response.dart';

/// Result data returned by getGroundStation.
class GetGroundStationResult {
  /// Altitude of the ground station.
  final double? altitudeMeters;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Ground station capabilities.
  final List<String> capabilities;
  /// City of ground station.
  final String? city;
  /// A reference to global communications site.
  final GroundStationsPropertiesResponseGlobalCommunicationsSite globalCommunicationsSite;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Latitude of the ground station in decimal degrees.
  final double? latitudeDegrees;
  /// The geo-location where the resource lives
  final String location;
  /// Longitude of the ground station in decimal degrees.
  final double? longitudeDegrees;
  /// The name of the resource
  final String name;
  /// Ground station provider name.
  final String? providerName;
  /// Release Status of a ground station.
  final String releaseMode;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGroundStationResult].
  /// [altitudeMeters] Altitude of the ground station.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capabilities] Ground station capabilities.
  /// [city] City of ground station.
  /// [globalCommunicationsSite] A reference to global communications site.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [latitudeDegrees] Latitude of the ground station in decimal degrees.
  /// [location] The geo-location where the resource lives
  /// [longitudeDegrees] Longitude of the ground station in decimal degrees.
  /// [name] The name of the resource
  /// [providerName] Ground station provider name.
  /// [releaseMode] Release Status of a ground station.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetGroundStationResult({
    this.altitudeMeters,
    required this.azureApiVersion,
    required this.capabilities,
    this.city,
    required this.globalCommunicationsSite,
    required this.id,
    this.latitudeDegrees,
    required this.location,
    this.longitudeDegrees,
    required this.name,
    this.providerName,
    required this.releaseMode,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'altitudeMeters': ?altitudeMeters,
      'azureApiVersion': azureApiVersion,
      'capabilities': capabilities,
      'city': ?city,
      'globalCommunicationsSite': globalCommunicationsSite.toMap(),
      'id': id,
      'latitudeDegrees': ?latitudeDegrees,
      'location': location,
      'longitudeDegrees': ?longitudeDegrees,
      'name': name,
      'providerName': ?providerName,
      'releaseMode': releaseMode,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetGroundStationResult.fromMap(Map<String, dynamic> map) {
    return GetGroundStationResult(
      altitudeMeters: map['altitudeMeters'] == null ? null : map['altitudeMeters']! as double,
      azureApiVersion: map['azureApiVersion'] as String,
      capabilities: (map['capabilities'] as List).cast<String>(),
      city: map['city'] == null ? null : map['city']! as String,
      globalCommunicationsSite: GroundStationsPropertiesResponseGlobalCommunicationsSite.fromMap((map['globalCommunicationsSite'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      latitudeDegrees: map['latitudeDegrees'] == null ? null : map['latitudeDegrees']! as double,
      location: map['location'] as String,
      longitudeDegrees: map['longitudeDegrees'] == null ? null : map['longitudeDegrees']! as double,
      name: map['name'] as String,
      providerName: map['providerName'] == null ? null : map['providerName']! as String,
      releaseMode: map['releaseMode'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

