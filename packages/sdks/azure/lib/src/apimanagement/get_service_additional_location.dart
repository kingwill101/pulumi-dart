// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceAdditionalLocation {
  /// The number of compute units in this region.
  final pulumi.Input<int> capacity;
  /// Gateway URL of the API Management service in the Region.
  final pulumi.Input<String> gatewayRegionalUrl;
  /// The location name of the additional region among Azure Data center regions.
  final pulumi.Input<String> location;
  /// Private IP addresses of the API Management service in the additional location, for instances using virtual network mode.
  final pulumi.Input<List<String>> privateIpAddresses;
  /// ID of the standard SKU IPv4 Public IP. Available only for Premium SKU deployed in a virtual network.
  final pulumi.Input<String> publicIpAddressId;
  /// Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  final pulumi.Input<List<String>> publicIpAddresses;
  /// List of the availability zones where API Management is deployed in the additional region exists.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [GetServiceAdditionalLocation].
  /// [capacity] The number of compute units in this region.
  /// [gatewayRegionalUrl] Gateway URL of the API Management service in the Region.
  /// [location] The location name of the additional region among Azure Data center regions.
  /// [privateIpAddresses] Private IP addresses of the API Management service in the additional location, for instances using virtual network mode.
  /// [publicIpAddressId] ID of the standard SKU IPv4 Public IP. Available only for Premium SKU deployed in a virtual network.
  /// [publicIpAddresses] Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  /// [zones] List of the availability zones where API Management is deployed in the additional region exists.
  const GetServiceAdditionalLocation({
    required this.capacity,
    required this.gatewayRegionalUrl,
    required this.location,
    required this.privateIpAddresses,
    required this.publicIpAddressId,
    required this.publicIpAddresses,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'gatewayRegionalUrl': gatewayRegionalUrl,
      'location': location,
      'privateIpAddresses': privateIpAddresses,
      'publicIpAddressId': publicIpAddressId,
      'publicIpAddresses': publicIpAddresses,
      'zones': zones,
    };
  }

  factory GetServiceAdditionalLocation.fromMap(Map<String, dynamic> map) {
    return GetServiceAdditionalLocation(
      capacity: pulumi.Input.fromValue((map['capacity'] as num).toInt()),
      gatewayRegionalUrl: pulumi.Input.fromValue(map['gatewayRegionalUrl'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      privateIpAddresses: pulumi.Input.fromValue((map['privateIpAddresses'] as List).cast<String>()),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      publicIpAddresses: pulumi.Input.fromValue((map['publicIpAddresses'] as List).cast<String>()),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
