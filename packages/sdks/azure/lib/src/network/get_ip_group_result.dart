// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpGroup.
class GetIpGroupResult {
  /// A list of CIDRs or IP addresses.
  final List<String>? cidrs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The supported Azure location where the resource exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetIpGroupResult].
  /// [cidrs] A list of CIDRs or IP addresses.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the resource exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  const GetIpGroupResult({
    this.cidrs,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetIpGroupResult.fromMap(Map<String, dynamic> map) {
    return GetIpGroupResult(
      cidrs: (() { final guardedValue = map['cidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
