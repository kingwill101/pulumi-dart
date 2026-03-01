// ignore_for_file: unused_element, unnecessary_cast


/// An array of administrator user identities
class DedicatedCapacityAdministratorsResponse {
  /// An array of administrator user identities.
  final List<String>? members;

  /// Creates a new [DedicatedCapacityAdministratorsResponse].
  /// [members] An array of administrator user identities.
  DedicatedCapacityAdministratorsResponse({
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
    };
  }

  factory DedicatedCapacityAdministratorsResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedCapacityAdministratorsResponse(
      members: map['members'] == null ? null : (map['members'] as List).cast<String>(),
    );
  }
}

