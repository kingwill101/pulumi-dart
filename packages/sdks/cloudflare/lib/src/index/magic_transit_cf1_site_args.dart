// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_cf1_site_body.dart';
import 'magic_transit_cf1_site_location.dart';

/// {@template pulumi_index_magic_transit_cf1_site_magic_transit_cf1_site_args_doc}
/// The set of arguments for MagicTransitCf1Site.
/// {@endtemplate}
/// {@macro pulumi_index_magic_transit_cf1_site_magic_transit_cf1_site_args_doc}
class MagicTransitCf1SiteArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<MagicTransitCf1SiteBody>> bodies;
  /// A human-provided description of the CF1 Site.
  final pulumi.Input<String?>? description;
  final pulumi.Input<MagicTransitCf1SiteLocation?>? location;
  /// A human-provided name describing the CF1 Site that should be unique within the account.
  final pulumi.Input<String?>? name;

  /// Creates a new [MagicTransitCf1SiteArgs].
  /// [accountId] Identifier
  /// [bodies] Required.
  /// [description] A human-provided description of the CF1 Site.
  /// [location] Optional.
  /// [name] A human-provided name describing the CF1 Site that should be unique within the account.
  const MagicTransitCf1SiteArgs({
    required this.accountId,
    required this.bodies,
    this.description,
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bodies': pulumi.Input.mapInputValue<List<MagicTransitCf1SiteBody>, List<Map<String, dynamic>>>(bodies, (value) => pulumi.Input.encodeList<MagicTransitCf1SiteBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'location': ?pulumi.Input.mapOptionalInputValue<MagicTransitCf1SiteLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory MagicTransitCf1SiteArgs.fromMap(Map<String, dynamic> map) {
    return MagicTransitCf1SiteArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bodies: pulumi.Input.fromValue(pulumi.Input.decodeList<MagicTransitCf1SiteBody>(map['bodies']!, (value) => MagicTransitCf1SiteBody.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitCf1SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
