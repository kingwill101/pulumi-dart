// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ground_stations_properties_global_communications_site.dart';

/// {@template pulumi_orbital_ground_station_args_doc}
/// The set of arguments for GroundStation.
/// {@endtemplate}
/// {@macro pulumi_orbital_ground_station_args_doc}
class GroundStationArgs {
  /// Altitude of the ground station.
  final pulumi.Input<double>? altitudeMeters;
  /// Ground station capabilities.
  final pulumi.Input<List<String>> capabilities;
  /// City of ground station.
  final pulumi.Input<String>? city;
  /// A reference to global communications site.
  final pulumi.Input<GroundStationsPropertiesGlobalCommunicationsSite> globalCommunicationsSite;
  /// Ground Station name.
  final pulumi.Input<String>? groundStationName;
  /// Latitude of the ground station in decimal degrees.
  final pulumi.Input<double>? latitudeDegrees;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Longitude of the ground station in decimal degrees.
  final pulumi.Input<double>? longitudeDegrees;
  /// Ground station provider name.
  final pulumi.Input<String>? providerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GroundStationArgs].
  /// [altitudeMeters] Altitude of the ground station.
  /// [capabilities] Ground station capabilities.
  /// [city] City of ground station.
  /// [globalCommunicationsSite] A reference to global communications site.
  /// [groundStationName] Ground Station name.
  /// [latitudeDegrees] Latitude of the ground station in decimal degrees.
  /// [location] The geo-location where the resource lives
  /// [longitudeDegrees] Longitude of the ground station in decimal degrees.
  /// [providerName] Ground station provider name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  GroundStationArgs({
    this.altitudeMeters,
    required this.capabilities,
    this.city,
    required this.globalCommunicationsSite,
    this.groundStationName,
    this.latitudeDegrees,
    this.location,
    this.longitudeDegrees,
    this.providerName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'altitudeMeters': ?altitudeMeters,
      'capabilities': capabilities,
      'city': ?city,
      'globalCommunicationsSite': pulumi.Input.mapInputValue<GroundStationsPropertiesGlobalCommunicationsSite, Map<String, dynamic>>(globalCommunicationsSite, (value) => value.toMap()),
      'groundStationName': ?groundStationName,
      'latitudeDegrees': ?latitudeDegrees,
      'location': ?location,
      'longitudeDegrees': ?longitudeDegrees,
      'providerName': ?providerName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GroundStationArgs.fromMap(Map<String, dynamic> map) {
    return GroundStationArgs(
      altitudeMeters: map['altitudeMeters'] == null ? null : (map['altitudeMeters']! as double).input(),
      capabilities: ((map['capabilities'] as List).cast<String>()).input(),
      city: map['city'] == null ? null : (map['city']! as String).input(),
      globalCommunicationsSite: (GroundStationsPropertiesGlobalCommunicationsSite.fromMap((map['globalCommunicationsSite'] as Map).cast<String, dynamic>())).input(),
      groundStationName: map['groundStationName'] == null ? null : (map['groundStationName']! as String).input(),
      latitudeDegrees: map['latitudeDegrees'] == null ? null : (map['latitudeDegrees']! as double).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      longitudeDegrees: map['longitudeDegrees'] == null ? null : (map['longitudeDegrees']! as double).input(),
      providerName: map['providerName'] == null ? null : (map['providerName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

