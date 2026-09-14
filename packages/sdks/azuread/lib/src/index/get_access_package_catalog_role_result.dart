// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPackageCatalogRole.
class GetAccessPackageCatalogRoleResult {
  /// The description of the role.
  final String? description;
  /// The display name of the role.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The object ID of the role.
  final String? objectId;
  /// The object ID of the role.
  final String? templateId;

  /// Creates a new [GetAccessPackageCatalogRoleResult].
  /// [description] The description of the role.
  /// [displayName] The display name of the role.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] The object ID of the role.
  /// [templateId] The object ID of the role.
  const GetAccessPackageCatalogRoleResult({
    this.description,
    this.displayName,
    this.id,
    this.objectId,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'objectId': ?objectId,
      'templateId': ?templateId,
    };
  }

  factory GetAccessPackageCatalogRoleResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageCatalogRoleResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
