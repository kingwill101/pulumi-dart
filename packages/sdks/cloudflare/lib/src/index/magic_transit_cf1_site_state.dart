// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_cf1_site_body.dart';
import 'magic_transit_cf1_site_location.dart';

/// Input properties used for looking up and filtering MagicTransitCf1Site resources.
class MagicTransitCf1SiteState {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<MagicTransitCf1SiteBody>?>? bodies;
  final pulumi.Input<String?>? createdOn;
  /// A human-provided description of the CF1 Site.
  final pulumi.Input<String?>? description;
  final pulumi.Input<MagicTransitCf1SiteLocation?>? location;
  final pulumi.Input<String?>? modifiedOn;
  /// A human-provided name describing the CF1 Site that should be unique within the account.
  final pulumi.Input<String?>? name;

  /// Creates a new [MagicTransitCf1SiteState].
  /// [accountId] Identifier
  /// [bodies] Optional.
  /// [createdOn] Optional.
  /// [description] A human-provided description of the CF1 Site.
  /// [location] Optional.
  /// [modifiedOn] Optional.
  /// [name] A human-provided name describing the CF1 Site that should be unique within the account.
  const MagicTransitCf1SiteState({
    this.accountId,
    this.bodies,
    this.createdOn,
    this.description,
    this.location,
    this.modifiedOn,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bodies': ?pulumi.Input.mapOptionalInputValue<List<MagicTransitCf1SiteBody>, List<Map<String, dynamic>>>(bodies, (value) => pulumi.Input.encodeList<MagicTransitCf1SiteBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdOn': ?createdOn,
      'description': ?description,
      'location': ?pulumi.Input.mapOptionalInputValue<MagicTransitCf1SiteLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'name': ?name,
    };
  }

  factory MagicTransitCf1SiteState.fromMap(Map<String, dynamic> map) {
    return MagicTransitCf1SiteState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bodies: (() { final guardedValue = map['bodies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MagicTransitCf1SiteBody>(guardedValue, (value) => MagicTransitCf1SiteBody.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitCf1SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
