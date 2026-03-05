// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIpGroups.
class GetIpGroupsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of IP Group IDs.
  final List<String> ids;
  final String location;
  final String name;

  /// A list of IP Group Names.
  final List<String> names;
  final String resourceGroupName;
  final Map<String, String> tags;

  /// Creates a new [GetIpGroupsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of IP Group IDs.
  /// [location] Required.
  /// [name] Required.
  /// [names] A list of IP Group Names.
  /// [resourceGroupName] Required.
  /// [tags] Required.
  GetIpGroupsResult({
    required this.id,
    required this.ids,
    required this.location,
    required this.name,
    required this.names,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'location': location,
      'name': name,
      'names': names,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetIpGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetIpGroupsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      names: (map['names'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
