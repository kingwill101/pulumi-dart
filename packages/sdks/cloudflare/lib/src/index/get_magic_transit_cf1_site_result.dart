// ignore_for_file: unused_element, unnecessary_cast

import 'get_magic_transit_cf1_site_location.dart';

/// Result data returned by getMagicTransitCf1Site.
class GetMagicTransitCf1SiteResult {
  /// Identifier
  final String? accountId;
  /// Identifier
  final String? cf1SiteId;
  final String? createdOn;
  /// A human-provided description of the CF1 Site.
  final String? description;
  /// Identifier
  final String? id;
  final GetMagicTransitCf1SiteLocation? location;
  final String? modifiedOn;
  /// A human-provided name describing the CF1 Site that should be unique within the account.
  final String? name;

  /// Creates a new [GetMagicTransitCf1SiteResult].
  /// [accountId] Identifier
  /// [cf1SiteId] Identifier
  /// [createdOn] Optional.
  /// [description] A human-provided description of the CF1 Site.
  /// [id] Identifier
  /// [location] Optional.
  /// [modifiedOn] Optional.
  /// [name] A human-provided name describing the CF1 Site that should be unique within the account.
  const GetMagicTransitCf1SiteResult({
    this.accountId,
    this.cf1SiteId,
    this.createdOn,
    this.description,
    this.id,
    this.location,
    this.modifiedOn,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'cf1SiteId': ?cf1SiteId,
      'createdOn': ?createdOn,
      'description': ?description,
      'id': ?id,
      'location': ?location?.toMap(),
      'modifiedOn': ?modifiedOn,
      'name': ?name,
    };
  }

  factory GetMagicTransitCf1SiteResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitCf1SiteResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cf1SiteId: (() { final guardedValue = map['cf1SiteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return GetMagicTransitCf1SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
