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
    required pulumi.Output<List<SpacecraftLink>> links,
    pulumi.Output<String>? location,
    pulumi.Output<String>? noradId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? spacecraftName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> titleLine,
    required pulumi.Output<String> tleLine1,
    required pulumi.Output<String> tleLine2,
  }) :
      links = pulumi.Input.asInput<List<SpacecraftLink>>(links),
      location = pulumi.Input.asOptionalInput<String>(location),
      noradId = pulumi.Input.asOptionalInput<String>(noradId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spacecraftName = pulumi.Input.asOptionalInput<String>(spacecraftName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      titleLine = pulumi.Input.asInput<String>(titleLine),
      tleLine1 = pulumi.Input.asInput<String>(tleLine1),
      tleLine2 = pulumi.Input.asInput<String>(tleLine2);

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
      links: pulumi.Output.create<List<SpacecraftLink>>(pulumi.Input.decodeList<SpacecraftLink>(map['links'], (value) => SpacecraftLink.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      noradId: map['noradId'] == null ? null : pulumi.Output.create<String>(map['noradId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spacecraftName: map['spacecraftName'] == null ? null : pulumi.Output.create<String>(map['spacecraftName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      titleLine: pulumi.Output.create<String>(map['titleLine'] as String),
      tleLine1: pulumi.Output.create<String>(map['tleLine1'] as String),
      tleLine2: pulumi.Output.create<String>(map['tleLine2'] as String),
    );
  }
}

