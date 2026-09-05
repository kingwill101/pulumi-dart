// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroup.
class GetGroupResult {
  final String? apiManagementName;
  /// The description of this API Management Group.
  final String? description;
  /// The display name of this API Management Group.
  final String? displayName;
  /// The identifier of the external Group.
  final String? externalId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// The type of this API Management Group, such as `custom` or `external`.
  final String? type;

  /// Creates a new [GetGroupResult].
  /// [apiManagementName] Optional.
  /// [description] The description of this API Management Group.
  /// [displayName] The display name of this API Management Group.
  /// [externalId] The identifier of the external Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [type] The type of this API Management Group, such as `custom` or `external`.
  const GetGroupResult({
    this.apiManagementName,
    this.description,
    this.displayName,
    this.externalId,
    this.id,
    this.name,
    this.resourceGroupName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'description': ?description,
      'displayName': ?displayName,
      'externalId': ?externalId,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'type': ?type,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
