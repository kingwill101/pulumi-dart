// ignore_for_file: unused_element, unnecessary_cast

import 'get_magic_transit_site_filter.dart';
import 'get_magic_transit_site_location.dart';

/// Result data returned by getMagicTransitSite.
class GetMagicTransitSiteResult {
  /// Identifier
  final String? accountId;
  /// Magic Connector identifier tag.
  final String? connectorId;
  final String? description;
  final GetMagicTransitSiteFilter? filter;
  /// Site high availability mode. If set to true, the site can have two connectors and runs in high availability mode.
  final bool? haMode;
  /// Identifier
  final String? id;
  /// Location of site in latitude and longitude.
  final GetMagicTransitSiteLocation? location;
  /// The name of the site.
  final String? name;
  /// Magic Connector identifier tag. Used when high availability mode is on.
  final String? secondaryConnectorId;
  /// Identifier
  final String? siteId;

  /// Creates a new [GetMagicTransitSiteResult].
  /// [accountId] Identifier
  /// [connectorId] Magic Connector identifier tag.
  /// [description] Optional.
  /// [filter] Optional.
  /// [haMode] Site high availability mode. If set to true, the site can have two connectors and runs in high availability mode.
  /// [id] Identifier
  /// [location] Location of site in latitude and longitude.
  /// [name] The name of the site.
  /// [secondaryConnectorId] Magic Connector identifier tag. Used when high availability mode is on.
  /// [siteId] Identifier
  const GetMagicTransitSiteResult({
    this.accountId,
    this.connectorId,
    this.description,
    this.filter,
    this.haMode,
    this.id,
    this.location,
    this.name,
    this.secondaryConnectorId,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'connectorId': ?connectorId,
      'description': ?description,
      'filter': ?filter?.toMap(),
      'haMode': ?haMode,
      'id': ?id,
      'location': ?location?.toMap(),
      'name': ?name,
      'secondaryConnectorId': ?secondaryConnectorId,
      'siteId': ?siteId,
    };
  }

  factory GetMagicTransitSiteResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetMagicTransitSiteFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      haMode: (() { final guardedValue = map['haMode']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return GetMagicTransitSiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectorId: (() { final guardedValue = map['secondaryConnectorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
