// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPackageCatalogRole.
class GetAccessPackageCatalogRoleResult {
  /// The description of the role.
  final String description;
  /// The display name of the role.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The object ID of the role.
  final String objectId;
  /// The object ID of the role.
  final String templateId;

  /// Creates a new [GetAccessPackageCatalogRoleResult].
  /// [description] The description of the role.
  /// [displayName] The display name of the role.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] The object ID of the role.
  /// [templateId] The object ID of the role.
  const GetAccessPackageCatalogRoleResult({
    required this.description,
    required this.displayName,
    required this.id,
    required this.objectId,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'id': id,
      'objectId': objectId,
      'templateId': templateId,
    };
  }

  factory GetAccessPackageCatalogRoleResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageCatalogRoleResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      objectId: map['objectId'] as String,
      templateId: map['templateId'] as String,
    );
  }
}

