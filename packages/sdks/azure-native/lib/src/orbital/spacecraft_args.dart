// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spacecraft_link.dart';

/// {@template pulumi_orbital_spacecraft_args_doc}
/// The set of arguments for Spacecraft.
/// {@endtemplate}
/// {@macro pulumi_orbital_spacecraft_args_doc}
class SpacecraftArgs {
  /// Immutable list of Spacecraft links.
  final pulumi.Input<List<SpacecraftLink>> links;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// NORAD ID of the spacecraft.
  final pulumi.Input<String>? noradId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Spacecraft ID.
  final pulumi.Input<String>? spacecraftName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Title line of the two-line element set (TLE).
  final pulumi.Input<String> titleLine;
  /// Line 1 of the two-line element set (TLE).
  final pulumi.Input<String> tleLine1;
  /// Line 2 of the two-line element set (TLE).
  final pulumi.Input<String> tleLine2;

  /// Creates a new [SpacecraftArgs].
  /// [links] Immutable list of Spacecraft links.
  /// [location] The geo-location where the resource lives
  /// [noradId] NORAD ID of the spacecraft.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spacecraftName] Spacecraft ID.
  /// [tags] Resource tags.
  /// [titleLine] Title line of the two-line element set (TLE).
  /// [tleLine1] Line 1 of the two-line element set (TLE).
  /// [tleLine2] Line 2 of the two-line element set (TLE).
  SpacecraftArgs({
    required this.links,
    this.location,
    this.noradId,
    required this.resourceGroupName,
    this.spacecraftName,
    this.tags,
    required this.titleLine,
    required this.tleLine1,
    required this.tleLine2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links': pulumi.Input.mapInputValue<List<SpacecraftLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<SpacecraftLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'noradId': ?noradId,
      'resourceGroupName': resourceGroupName,
      'spacecraftName': ?spacecraftName,
      'tags': ?tags,
      'titleLine': titleLine,
      'tleLine1': tleLine1,
      'tleLine2': tleLine2,
    };
  }

  factory SpacecraftArgs.fromMap(Map<String, dynamic> map) {
    return SpacecraftArgs(
      links: (pulumi.Input.decodeList<SpacecraftLink>(map['links'], (value) => SpacecraftLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      noradId: map['noradId'] == null ? null : (map['noradId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      spacecraftName: map['spacecraftName'] == null ? null : (map['spacecraftName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      titleLine: (map['titleLine'] as String).input(),
      tleLine1: (map['tleLine1'] as String).input(),
      tleLine2: (map['tleLine2'] as String).input(),
    );
  }
}

