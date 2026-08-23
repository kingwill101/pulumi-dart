// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_groups_address_group.dart';

/// Result data returned by getAddressGroups.
class GetAddressGroupsResult {
  /// A list of Address Groups in the selected project or organization and location. Structure is defined below.
  final List<GetAddressGroupsAddressGroup> addressGroups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? parent;
  /// The ID of the project in which the resource belongs.
  final String project;

  /// Creates a new [GetAddressGroupsResult].
  /// [addressGroups] A list of Address Groups in the selected project or organization and location. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [parent] Optional.
  /// [project] The ID of the project in which the resource belongs.
  const GetAddressGroupsResult({
    required this.addressGroups,
    required this.id,
    required this.location,
    this.parent,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressGroups': pulumi.Input.encodeList<GetAddressGroupsAddressGroup, Map<String, dynamic>>(addressGroups, (value) => value.toMap()),
      'id': id,
      'location': location,
      'parent': ?parent,
      'project': project,
    };
  }

  factory GetAddressGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetAddressGroupsResult(
      addressGroups: pulumi.Input.decodeList<GetAddressGroupsAddressGroup>(map['addressGroups']!, (value) => GetAddressGroupsAddressGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: map['project'] as String,
    );
  }
}
