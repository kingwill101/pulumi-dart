// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTemplateSpecVersion.
class GetTemplateSpecVersionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Template.
  final Map<String, String> tags;
  /// The ARM Template body of the Template Spec Version.
  final String templateBody;
  final String version;

  /// Creates a new [GetTemplateSpecVersionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Template.
  /// [templateBody] The ARM Template body of the Template Spec Version.
  /// [version] Required.
  const GetTemplateSpecVersionResult({
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.templateBody,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'templateBody': templateBody,
      'version': version,
    };
  }

  factory GetTemplateSpecVersionResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateSpecVersionResult(
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      templateBody: map['templateBody'] as String,
      version: map['version'] as String,
    );
  }
}

