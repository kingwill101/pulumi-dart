// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroup.
class GetGroupResult {
  final String apiManagementName;

  /// The description of this API Management Group.
  final String description;

  /// The display name of this API Management Group.
  final String displayName;

  /// The identifier of the external Group.
  final String externalId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;

  /// The type of this API Management Group, such as `custom` or `external`.
  final String type;

  /// Creates a new [GetGroupResult].
  /// [apiManagementName] Required.
  /// [description] The description of this API Management Group.
  /// [displayName] The display name of this API Management Group.
  /// [externalId] The identifier of the external Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [type] The type of this API Management Group, such as `custom` or `external`.
  GetGroupResult({
    required this.apiManagementName,
    required this.description,
    required this.displayName,
    required this.externalId,
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'description': description,
      'displayName': displayName,
      'externalId': externalId,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'type': type,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      apiManagementName: map['apiManagementName'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      externalId: map['externalId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      type: map['type'] as String,
    );
  }
}
