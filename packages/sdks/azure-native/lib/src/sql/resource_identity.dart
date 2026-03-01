// ignore_for_file: unused_element, unnecessary_cast


/// Azure Active Directory identity configuration for a resource.
class ResourceIdentity {
  /// The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  final String? type;
  /// The resource ids of the user assigned identities to use
  final List<String>? userAssignedIdentities;

  /// Creates a new [ResourceIdentity].
  /// [type] The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  ResourceIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

