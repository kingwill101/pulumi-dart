// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProject.
class GetProjectResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Azure location where the resource exists.
  final String location;
  final String name;
  final String resourceGroupName;
  final String serviceName;

  /// The platform type of the migration source.
  final String sourcePlatform;

  /// A mapping of tags to assigned to the resource.
  final Map<String, String> tags;

  /// The platform type of the migration target.
  final String targetPlatform;

  /// Creates a new [GetProjectResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Azure location where the resource exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [serviceName] Required.
  /// [sourcePlatform] The platform type of the migration source.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [targetPlatform] The platform type of the migration target.
  GetProjectResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.serviceName,
    required this.sourcePlatform,
    required this.tags,
    required this.targetPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sourcePlatform': sourcePlatform,
      'tags': tags,
      'targetPlatform': targetPlatform,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      sourcePlatform: map['sourcePlatform'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetPlatform: map['targetPlatform'] as String,
    );
  }
}
