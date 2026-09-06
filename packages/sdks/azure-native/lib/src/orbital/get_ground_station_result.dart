// ignore_for_file: unused_element, unnecessary_cast

import 'ground_stations_properties_response_global_communications_site.dart';
import 'system_data_response.dart';

/// Result data returned by getGroundStation.
class GetGroundStationResult {
  /// Altitude of the ground station.
  final double? altitudeMeters;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Ground station capabilities.
  final List<String>? capabilities;
  /// City of ground station.
  final String? city;
  /// A reference to global communications site.
  final GroundStationsPropertiesResponseGlobalCommunicationsSite? globalCommunicationsSite;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Latitude of the ground station in decimal degrees.
  final double? latitudeDegrees;
  /// The geo-location where the resource lives
  final String? location;
  /// Longitude of the ground station in decimal degrees.
  final double? longitudeDegrees;
  /// The name of the resource
  final String? name;
  /// Ground station provider name.
  final String? providerName;
  /// Release Status of a ground station.
  final String? releaseMode;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetGroundStationResult({
    this.altitudeMeters,
    this.azureApiVersion,
    this.capabilities,
    this.city,
    this.globalCommunicationsSite,
    this.id,
    this.latitudeDegrees,
    this.location,
    this.longitudeDegrees,
    this.name,
    this.providerName,
    this.releaseMode,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'altitudeMeters': ?altitudeMeters,
      'azureApiVersion': ?azureApiVersion,
      'capabilities': ?capabilities,
      'city': ?city,
      'globalCommunicationsSite': ?globalCommunicationsSite?.toMap(),
      'id': ?id,
      'latitudeDegrees': ?latitudeDegrees,
      'location': ?location,
      'longitudeDegrees': ?longitudeDegrees,
      'name': ?name,
      'providerName': ?providerName,
      'releaseMode': ?releaseMode,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetGroundStationResult.fromMap(Map<String, dynamic> map) {
    return GetGroundStationResult(
      altitudeMeters: (() { final guardedValue = map['altitudeMeters']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalCommunicationsSite: (() { final guardedValue = map['globalCommunicationsSite']; if (guardedValue == null) return null; return GroundStationsPropertiesResponseGlobalCommunicationsSite.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latitudeDegrees: (() { final guardedValue = map['latitudeDegrees']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      longitudeDegrees: (() { final guardedValue = map['longitudeDegrees']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseMode: (() { final guardedValue = map['releaseMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
