// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProject.
class GetProjectResult {
  /// The description of the project.
  final String description;
  /// See Argument Reference above.
  final String domainId;
  /// See Argument Reference above.
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final bool? isDomain;
  /// See Argument Reference above.
  final String? name;
  /// See Argument Reference above.
  final String? parentId;
  /// See Argument Reference above.
  final String? projectId;
  /// See Argument Reference above.
  final String region;
  /// See Argument Reference above.
  final List<String> tags;

  /// Creates a new [GetProjectResult].
  /// [description] The description of the project.
  /// [domainId] See Argument Reference above.
  /// [enabled] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isDomain] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [parentId] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [tags] See Argument Reference above.
  GetProjectResult({
    required this.description,
    required this.domainId,
    this.enabled,
    required this.id,
    this.isDomain,
    this.name,
    this.parentId,
    this.projectId,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'domainId': domainId,
      'enabled': ?enabled,
      'id': id,
      'isDomain': ?isDomain,
      'name': ?name,
      'parentId': ?parentId,
      'projectId': ?projectId,
      'region': region,
      'tags': tags,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      description: map['description'] as String,
      domainId: map['domainId'] as String,
      enabled: map['enabled'] == null ? null : map['enabled']! as bool,
      id: map['id'] as String,
      isDomain: map['isDomain'] == null ? null : map['isDomain']! as bool,
      name: map['name'] == null ? null : map['name']! as String,
      parentId: map['parentId'] == null ? null : map['parentId']! as String,
      projectId: map['projectId'] == null ? null : map['projectId']! as String,
      region: map['region'] as String,
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}

