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
    required pulumi.Output<List<SpacecraftLink>> links,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> noradId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> titleLine,
    required pulumi.Output<List<String>> twoLineElements,
  }) :
      links = pulumi.Input.asInput<List<SpacecraftLink>>(links),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      noradId = pulumi.Input.asInput<String>(noradId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      titleLine = pulumi.Input.asInput<String>(titleLine),
      twoLineElements = pulumi.Input.asInput<List<String>>(twoLineElements);

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
      links: pulumi.Output.create<List<SpacecraftLink>>(pulumi.Input.decodeList<SpacecraftLink>(map['links'], (value) => SpacecraftLink.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      noradId: pulumi.Output.create<String>(map['noradId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      titleLine: pulumi.Output.create<String>(map['titleLine'] as String),
      twoLineElements: pulumi.Output.create<List<String>>((map['twoLineElements'] as List).cast<String>()),
    );
  }
}

