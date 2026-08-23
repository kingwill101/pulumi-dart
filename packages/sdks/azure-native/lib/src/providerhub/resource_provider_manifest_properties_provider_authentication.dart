// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The provider authentication.
class ResourceProviderManifestPropertiesProviderAuthentication {
  /// The allowed audiences.
  final pulumi.Input<List<String>> allowedAudiences;

  /// Creates a new [ResourceProviderManifestPropertiesProviderAuthentication].
  /// [allowedAudiences] The allowed audiences.
  const ResourceProviderManifestPropertiesProviderAuthentication({
    required this.allowedAudiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
    };
  }

  factory ResourceProviderManifestPropertiesProviderAuthentication.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesProviderAuthentication(
      allowedAudiences: pulumi.Input.fromValue((map['allowedAudiences'] as List).cast<String>()),
    );
  }
}
