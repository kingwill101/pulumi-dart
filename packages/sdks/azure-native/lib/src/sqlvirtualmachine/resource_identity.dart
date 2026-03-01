// ignore_for_file: unused_element, unnecessary_cast


/// Azure Active Directory identity configuration for a resource.
class ResourceIdentity {
  /// The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  final String? type;

  /// Creates a new [ResourceIdentity].
  /// [type] The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  ResourceIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

