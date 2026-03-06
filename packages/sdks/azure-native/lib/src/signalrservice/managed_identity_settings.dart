// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity settings for upstream.
class ManagedIdentitySettings {
  /// The Resource indicating the App ID URI of the target resource.
  /// It also appears in the aud (audience) claim of the issued token.
  final pulumi.Input<String>? resource;

  /// Creates a new [ManagedIdentitySettings].
  /// [resource] The Resource indicating the App ID URI of the target resource.
  const ManagedIdentitySettings({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
    };
  }

  factory ManagedIdentitySettings.fromMap(Map<String, dynamic> map) {
    return ManagedIdentitySettings(
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

