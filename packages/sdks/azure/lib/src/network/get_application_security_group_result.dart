// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplicationSecurityGroup.
class GetApplicationSecurityGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The supported Azure location where the Application Security Group exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetApplicationSecurityGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the Application Security Group exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  const GetApplicationSecurityGroupResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetApplicationSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationSecurityGroupResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

