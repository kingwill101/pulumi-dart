// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_location.dart';

/// Input properties used for looking up and filtering MagicTransitSite resources.
class MagicTransitSiteState {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Magic Connector identifier tag.
  final pulumi.Input<String?>? connectorId;
  final pulumi.Input<String?>? description;
  /// Site high availability mode. If set to true, the site can have two connectors and runs in high availability mode.
  final pulumi.Input<bool?>? haMode;
  /// Location of site in latitude and longitude.
  final pulumi.Input<MagicTransitSiteLocation?>? location;
  /// The name of the site.
  final pulumi.Input<String?>? name;
  /// Magic Connector identifier tag. Used when high availability mode is on.
  final pulumi.Input<String?>? secondaryConnectorId;

  /// Creates a new [MagicTransitSiteState].
  /// [accountId] Identifier
  /// [connectorId] Magic Connector identifier tag.
  /// [description] Optional.
  /// [haMode] Site high availability mode. If set to true, the site can have two connectors and runs in high availability mode.
  /// [location] Location of site in latitude and longitude.
  /// [name] The name of the site.
  /// [secondaryConnectorId] Magic Connector identifier tag. Used when high availability mode is on.
  const MagicTransitSiteState({
    this.accountId,
    this.connectorId,
    this.description,
    this.haMode,
    this.location,
    this.name,
    this.secondaryConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'connectorId': ?connectorId,
      'description': ?description,
      'haMode': ?haMode,
      'location': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'name': ?name,
      'secondaryConnectorId': ?secondaryConnectorId,
    };
  }

  factory MagicTransitSiteState.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haMode: (() { final guardedValue = map['haMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectorId: (() { final guardedValue = map['secondaryConnectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
