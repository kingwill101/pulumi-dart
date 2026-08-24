// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationOauthConfigurationDynamicClientRegistration {
  /// Allows any client with redirect URIs on localhost.
  final pulumi.Input<bool?>? allowAnyOnLocalhost;
  /// Allows any client with redirect URIs on 127.0.0.1.
  final pulumi.Input<bool?>? allowAnyOnLoopback;
  /// The URIs that are allowed as redirect URIs for dynamically registered clients. Must use the `https` protocol. Paths may end in `/*` to match all sub-paths.
  final pulumi.Input<List<String>?>? allowedUris;
  /// Whether dynamic client registration is enabled.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [AccessApplicationOauthConfigurationDynamicClientRegistration].
  /// [allowAnyOnLocalhost] Allows any client with redirect URIs on localhost.
  /// [allowAnyOnLoopback] Allows any client with redirect URIs on 127.0.0.1.
  /// [allowedUris] The URIs that are allowed as redirect URIs for dynamically registered clients. Must use the `https` protocol. Paths may end in `/*` to match all sub-paths.
  /// [enabled] Whether dynamic client registration is enabled.
  const AccessApplicationOauthConfigurationDynamicClientRegistration({
    this.allowAnyOnLocalhost,
    this.allowAnyOnLoopback,
    this.allowedUris,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAnyOnLocalhost': ?allowAnyOnLocalhost,
      'allowAnyOnLoopback': ?allowAnyOnLoopback,
      'allowedUris': ?allowedUris,
      'enabled': ?enabled,
    };
  }

  factory AccessApplicationOauthConfigurationDynamicClientRegistration.fromMap(Map<String, dynamic> map) {
    return AccessApplicationOauthConfigurationDynamicClientRegistration(
      allowAnyOnLocalhost: (() { final guardedValue = map['allowAnyOnLocalhost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowAnyOnLoopback: (() { final guardedValue = map['allowAnyOnLoopback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedUris: (() { final guardedValue = map['allowedUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
