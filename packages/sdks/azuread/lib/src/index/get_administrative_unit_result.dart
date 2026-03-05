// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAdministrativeUnit.
class GetAdministrativeUnitResult {
  /// The description of the administrative unit.
  final String description;

  /// The display name of the administrative unit.
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of object IDs of members who are present in this administrative unit.
  final List<String> members;

  /// The object ID of the administrative unit.
  final String objectId;

  /// Whether the administrative unit _and_ its members are hidden or publicly viewable in the directory. One of: `Hiddenmembership` or `Public`.
  final String visibility;

  /// Creates a new [GetAdministrativeUnitResult].
  /// [description] The description of the administrative unit.
  /// [displayName] The display name of the administrative unit.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [members] A list of object IDs of members who are present in this administrative unit.
  /// [objectId] The object ID of the administrative unit.
  /// [visibility] Whether the administrative unit _and_ its members are hidden or publicly viewable in the directory. One of: `Hiddenmembership` or `Public`.
  GetAdministrativeUnitResult({
    required this.description,
    required this.displayName,
    required this.id,
    required this.members,
    required this.objectId,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'id': id,
      'members': members,
      'objectId': objectId,
      'visibility': visibility,
    };
  }

  factory GetAdministrativeUnitResult.fromMap(Map<String, dynamic> map) {
    return GetAdministrativeUnitResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      members: (map['members'] as List).cast<String>(),
      objectId: map['objectId'] as String,
      visibility: map['visibility'] as String,
    );
  }
}
