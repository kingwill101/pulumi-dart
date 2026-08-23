// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an artifact available via some URI.
class SoftwareRecipeArtifactRemoteResponse {
  /// Must be provided if `allow_insecure` is `false`. SHA256 checksum in hex format, to compare to the checksum of the artifact. If the checksum is not empty and it doesn't match the artifact then the recipe installation fails before running any of the steps.
  final pulumi.Input<String> checksum;
  /// URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  final pulumi.Input<String> uri;

  /// Creates a new [SoftwareRecipeArtifactRemoteResponse].
  /// [checksum] Must be provided if `allow_insecure` is `false`. SHA256 checksum in hex format, to compare to the checksum of the artifact. If the checksum is not empty and it doesn't match the artifact then the recipe installation fails before running any of the steps.
  /// [uri] URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  const SoftwareRecipeArtifactRemoteResponse({
    required this.checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': checksum,
      'uri': uri,
    };
  }

  factory SoftwareRecipeArtifactRemoteResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifactRemoteResponse(
      checksum: pulumi.Input.fromValue(map['checksum'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
