// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTemplateSpecVersion.
class GetTemplateSpecVersionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Template.
  final Map<String, String>? tags;
  /// The ARM Template body of the Template Spec Version.
  final String? templateBody;
  final String? version;

  /// Creates a new [GetTemplateSpecVersionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Template.
  /// [templateBody] The ARM Template body of the Template Spec Version.
  /// [version] Optional.
  const GetTemplateSpecVersionResult({
    this.id,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.templateBody,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'version': ?version,
    };
  }

  factory GetTemplateSpecVersionResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateSpecVersionResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templateBody: (() { final guardedValue = map['templateBody']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
