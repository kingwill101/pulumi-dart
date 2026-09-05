// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplicationSecurityGroup.
class GetApplicationSecurityGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The supported Azure location where the Application Security Group exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetApplicationSecurityGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the Application Security Group exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  const GetApplicationSecurityGroupResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetApplicationSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationSecurityGroupResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
