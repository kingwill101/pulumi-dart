// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpGroups.
class GetIpGroupsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of IP Group IDs.
  final List<String>? ids;
  final String? location;
  final String? name;
  /// A list of IP Group Names.
  final List<String>? names;
  final String? resourceGroupName;
  final Map<String, String>? tags;

  /// Creates a new [GetIpGroupsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of IP Group IDs.
  /// [location] Optional.
  /// [name] Optional.
  /// [names] A list of IP Group Names.
  /// [resourceGroupName] Optional.
  /// [tags] Optional.
  const GetIpGroupsResult({
    this.id,
    this.ids,
    this.location,
    this.name,
    this.names,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ids': ?ids,
      'location': ?location,
      'name': ?name,
      'names': ?names,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetIpGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetIpGroupsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
