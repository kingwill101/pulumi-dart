// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProject.
class GetProjectResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Azure location where the resource exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  final String? serviceName;
  /// The platform type of the migration source.
  final String? sourcePlatform;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? tags;
  /// The platform type of the migration target.
  final String? targetPlatform;

  /// Creates a new [GetProjectResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Azure location where the resource exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [serviceName] Optional.
  /// [sourcePlatform] The platform type of the migration source.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [targetPlatform] The platform type of the migration target.
  const GetProjectResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.serviceName,
    this.sourcePlatform,
    this.tags,
    this.targetPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serviceName': ?serviceName,
      'sourcePlatform': ?sourcePlatform,
      'tags': ?tags,
      'targetPlatform': ?targetPlatform,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourcePlatform: (() { final guardedValue = map['sourcePlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetPlatform: (() { final guardedValue = map['targetPlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
