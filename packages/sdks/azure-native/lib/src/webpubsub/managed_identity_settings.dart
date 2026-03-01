// ignore_for_file: unused_element, unnecessary_cast


/// Managed identity settings for upstream.
class ManagedIdentitySettings {
  /// The Resource indicating the App ID URI of the target resource.
  /// It also appears in the aud (audience) claim of the issued token.
  final String? resource;

  /// Creates a new [ManagedIdentitySettings].
  /// [resource] The Resource indicating the App ID URI of the target resource.
  ManagedIdentitySettings({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
    };
  }

  factory ManagedIdentitySettings.fromMap(Map<String, dynamic> map) {
    return ManagedIdentitySettings(
      resource: map['resource'] == null ? null : map['resource'] as String,
    );
  }
}

