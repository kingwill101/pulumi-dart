// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAdministrativeUnit.
class GetAdministrativeUnitResult {
  /// The description of the administrative unit.
  final String? description;
  /// The display name of the administrative unit.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of object IDs of members who are present in this administrative unit.
  final List<String>? members;
  /// The object ID of the administrative unit.
  final String? objectId;
  /// Whether the administrative unit _and_ its members are hidden or publicly viewable in the directory. One of: `Hiddenmembership` or `Public`.
  final String? visibility;

  /// Creates a new [GetAdministrativeUnitResult].
  /// [description] The description of the administrative unit.
  /// [displayName] The display name of the administrative unit.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [members] A list of object IDs of members who are present in this administrative unit.
  /// [objectId] The object ID of the administrative unit.
  /// [visibility] Whether the administrative unit _and_ its members are hidden or publicly viewable in the directory. One of: `Hiddenmembership` or `Public`.
  const GetAdministrativeUnitResult({
    this.description,
    this.displayName,
    this.id,
    this.members,
    this.objectId,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'members': ?members,
      'objectId': ?objectId,
      'visibility': ?visibility,
    };
  }

  factory GetAdministrativeUnitResult.fromMap(Map<String, dynamic> map) {
    return GetAdministrativeUnitResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
