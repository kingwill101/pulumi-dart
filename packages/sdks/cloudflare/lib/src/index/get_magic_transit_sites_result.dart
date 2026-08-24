// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_sites_result_location.dart';

class GetMagicTransitSitesResult {
  /// Magic Connector identifier tag.
  final pulumi.Input<String> connectorId;
  final pulumi.Input<String> description;
  /// Site high availability mode. If set to true, the site can have two connectors and runs in high availability mode.
  final pulumi.Input<bool> haMode;
  /// Identifier
  final pulumi.Input<String> id;
  /// Location of site in latitude and longitude.
  final pulumi.Input<GetMagicTransitSitesResultLocation> location;
  /// The name of the site.
  final pulumi.Input<String> name;
  /// Magic Connector identifier tag. Used when high availability mode is on.
  final pulumi.Input<String> secondaryConnectorId;

  /// Creates a new [GetMagicTransitSitesResult].
  /// [connectorId] Magic Connector identifier tag.
  /// [description] Required.
  /// [haMode] Site high availability mode. If set to true, the site can have two connectors and runs in high availability mode.
  /// [id] Identifier
  /// [location] Location of site in latitude and longitude.
  /// [name] The name of the site.
  /// [secondaryConnectorId] Magic Connector identifier tag. Used when high availability mode is on.
  const GetMagicTransitSitesResult({
    required this.connectorId,
    required this.description,
    required this.haMode,
    required this.id,
    required this.location,
    required this.name,
    required this.secondaryConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': connectorId,
      'description': description,
      'haMode': haMode,
      'id': id,
      'location': pulumi.Input.mapInputValue<GetMagicTransitSitesResultLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'name': name,
      'secondaryConnectorId': secondaryConnectorId,
    };
  }

  factory GetMagicTransitSitesResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSitesResult(
      connectorId: pulumi.Input.fromValue(map['connectorId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      haMode: pulumi.Input.fromValue(map['haMode'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(GetMagicTransitSitesResultLocation.fromMap((map['location']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      secondaryConnectorId: pulumi.Input.fromValue(map['secondaryConnectorId'] as String),
    );
  }
}
