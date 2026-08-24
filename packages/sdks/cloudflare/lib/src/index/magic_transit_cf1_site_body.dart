// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_cf1_site_body_location.dart';

class MagicTransitCf1SiteBody {
  final pulumi.Input<String?>? createdOn;
  /// A human-provided description of the CF1 Site.
  final pulumi.Input<String?>? description;
  /// Identifier
  final pulumi.Input<String?>? id;
  final pulumi.Input<MagicTransitCf1SiteBodyLocation?>? location;
  final pulumi.Input<String?>? modifiedOn;
  /// A human-provided name describing the CF1 Site that should be unique within the account.
  final pulumi.Input<String> name;

  /// Creates a new [MagicTransitCf1SiteBody].
  /// [createdOn] Optional.
  /// [description] A human-provided description of the CF1 Site.
  /// [id] Identifier
  /// [location] Optional.
  /// [modifiedOn] Optional.
  /// [name] A human-provided name describing the CF1 Site that should be unique within the account.
  const MagicTransitCf1SiteBody({
    this.createdOn,
    this.description,
    this.id,
    this.location,
    this.modifiedOn,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'description': ?description,
      'id': ?id,
      'location': ?pulumi.Input.mapOptionalInputValue<MagicTransitCf1SiteBodyLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'name': name,
    };
  }

  factory MagicTransitCf1SiteBody.fromMap(Map<String, dynamic> map) {
    return MagicTransitCf1SiteBody(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitCf1SiteBodyLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
