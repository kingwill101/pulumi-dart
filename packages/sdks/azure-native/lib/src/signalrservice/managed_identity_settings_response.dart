// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity settings for upstream.
class ManagedIdentitySettingsResponse {
  /// The Resource indicating the App ID URI of the target resource.
  /// It also appears in the aud (audience) claim of the issued token.
  final pulumi.Input<String>? resource;

  /// Creates a new [ManagedIdentitySettingsResponse].
  /// [resource] The Resource indicating the App ID URI of the target resource.
  ManagedIdentitySettingsResponse({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
    };
  }

  factory ManagedIdentitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentitySettingsResponse(
      resource: map['resource'] == null ? null : (map['resource']! as String).input(),
    );
  }
}

