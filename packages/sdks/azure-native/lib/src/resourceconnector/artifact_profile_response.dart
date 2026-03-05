// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Appliance ArtifactProfile definition.
class ArtifactProfileResponse {
  /// Endpoint is the URL to upload artifacts to.
  final pulumi.Input<String> endpoint;

  /// Creates a new [ArtifactProfileResponse].
  /// [endpoint] Endpoint is the URL to upload artifacts to.
  ArtifactProfileResponse({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory ArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactProfileResponse(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}

