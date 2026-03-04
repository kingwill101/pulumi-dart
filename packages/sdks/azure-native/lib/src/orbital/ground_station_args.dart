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
  final pulumi.Input<GroundStationsPropertiesGlobalCommunicationsSite>
  globalCommunicationsSite;

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
      'globalCommunicationsSite':
          pulumi.Input.mapInputValue<
            GroundStationsPropertiesGlobalCommunicationsSite,
            Map<String, dynamic>
          >(globalCommunicationsSite, (value) => value.toMap()),
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
      altitudeMeters: (() {
        final guardedValue = map['altitudeMeters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      capabilities: pulumi.Input.fromValue(
        (map['capabilities'] as List).cast<String>(),
      ),
      city: (() {
        final guardedValue = map['city'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalCommunicationsSite: pulumi.Input.fromValue(
        GroundStationsPropertiesGlobalCommunicationsSite.fromMap(
          (map['globalCommunicationsSite']! as Map).cast<String, dynamic>(),
        ),
      ),
      groundStationName: (() {
        final guardedValue = map['groundStationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      latitudeDegrees: (() {
        final guardedValue = map['latitudeDegrees'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      longitudeDegrees: (() {
        final guardedValue = map['longitudeDegrees'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      providerName: (() {
        final guardedValue = map['providerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
