// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spacecraft_link.dart';

/// {@template pulumi_orbital_spacecraft_spacecraft_args_doc}
/// The set of arguments for Spacecraft.
/// {@endtemplate}
/// {@macro pulumi_orbital_spacecraft_spacecraft_args_doc}
class SpacecraftArgs {
  /// A `links` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<SpacecraftLink>> links;
  /// The location where the Spacecraft exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Spacecraft. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// NORAD ID of the Spacecraft.
  final pulumi.Input<String> noradId;
  /// The name of the Resource Group where the Spacecraft exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Title of the two line elements (TLE).
  final pulumi.Input<String> titleLine;
  /// A list of the two line elements (TLE), the first string being the first of the TLE, the second string being the second line of the TLE. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> twoLineElements;

  /// Creates a new [SpacecraftArgs].
  /// [links] A `links` block as defined below. Changing this forces a new resource to be created.
  /// [location] The location where the Spacecraft exists. Changing this forces a new resource to be created.
  /// [name] The name of the Spacecraft. Changing this forces a new resource to be created.
  /// [noradId] NORAD ID of the Spacecraft.
  /// [resourceGroupName] The name of the Resource Group where the Spacecraft exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [titleLine] Title of the two line elements (TLE).
  /// [twoLineElements] A list of the two line elements (TLE), the first string being the first of the TLE, the second string being the second line of the TLE. Changing this forces a new resource to be created.
  SpacecraftArgs({
    required this.links,
    this.location,
    this.name,
    required this.noradId,
    required this.resourceGroupName,
    this.tags,
    required this.titleLine,
    required this.twoLineElements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links': pulumi.Input.mapInputValue<List<SpacecraftLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<SpacecraftLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'noradId': noradId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'titleLine': titleLine,
      'twoLineElements': twoLineElements,
    };
  }

  factory SpacecraftArgs.fromMap(Map<String, dynamic> map) {
    return SpacecraftArgs(
      links: (pulumi.Input.decodeList<SpacecraftLink>(map['links'], (value) => SpacecraftLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      noradId: (map['noradId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      titleLine: (map['titleLine'] as String).input(),
      twoLineElements: ((map['twoLineElements'] as List).cast<String>()).input(),
    );
  }
}

