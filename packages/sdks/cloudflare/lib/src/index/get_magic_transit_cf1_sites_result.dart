// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_cf1_sites_result_location.dart';

class GetMagicTransitCf1SitesResult {
  final pulumi.Input<String> createdOn;
  /// A human-provided description of the CF1 Site.
  final pulumi.Input<String> description;
  /// Identifier
  final pulumi.Input<String> id;
  final pulumi.Input<GetMagicTransitCf1SitesResultLocation> location;
  final pulumi.Input<String> modifiedOn;
  /// A human-provided name describing the CF1 Site that should be unique within the account.
  final pulumi.Input<String> name;

  /// Creates a new [GetMagicTransitCf1SitesResult].
  /// [createdOn] Required.
  /// [description] A human-provided description of the CF1 Site.
  /// [id] Identifier
  /// [location] Required.
  /// [modifiedOn] Required.
  /// [name] A human-provided name describing the CF1 Site that should be unique within the account.
  const GetMagicTransitCf1SitesResult({
    required this.createdOn,
    required this.description,
    required this.id,
    required this.location,
    required this.modifiedOn,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'description': description,
      'id': id,
      'location': pulumi.Input.mapInputValue<GetMagicTransitCf1SitesResultLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'modifiedOn': modifiedOn,
      'name': name,
    };
  }

  factory GetMagicTransitCf1SitesResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitCf1SitesResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(GetMagicTransitCf1SitesResultLocation.fromMap((map['location']! as Map).cast<String, dynamic>())),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
