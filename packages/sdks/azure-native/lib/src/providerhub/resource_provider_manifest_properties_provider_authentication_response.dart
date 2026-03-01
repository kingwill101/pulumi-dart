// ignore_for_file: unused_element, unnecessary_cast


/// The provider authentication.
class ResourceProviderManifestPropertiesProviderAuthenticationResponse {
  /// The allowed audiences.
  final List<String> allowedAudiences;

  /// Creates a new [ResourceProviderManifestPropertiesProviderAuthenticationResponse].
  /// [allowedAudiences] The allowed audiences.
  ResourceProviderManifestPropertiesProviderAuthenticationResponse({
    required this.allowedAudiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
    };
  }

  factory ResourceProviderManifestPropertiesProviderAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesProviderAuthenticationResponse(
      allowedAudiences: (map['allowedAudiences'] as List).cast<String>(),
    );
  }
}

