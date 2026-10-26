// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallEndpointEndpointSettings {
  /// (Optional, Beta)
  /// The Palo Alto Networks content cloud region of the firewall endpoint,
  /// for example `US_CENTRAL` or `CANADA`. See
  /// [API docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.firewallEndpoints#contentcloudregion)
  /// for the list of supported regions.
  final pulumi.Input<String?>? contentCloudRegion;
  /// (Optional, Beta)
  /// Whether to block HTTP partial responses for the firewall endpoint.
  /// When `true`, resumption of blocked malicious HTTP file downloads is
  /// blocked by the firewall. `false` provides maximum availability, `true`
  /// provides maximum security.
  final pulumi.Input<bool?>? httpPartialResponseBlocked;
  /// Indicates whether Jumbo Frames are enabled for the firewall endpoint.
  final pulumi.Input<bool?>? jumboFramesEnabled;

  /// Creates a new [FirewallEndpointEndpointSettings].
  /// [contentCloudRegion] (Optional, Beta)
  /// [httpPartialResponseBlocked] (Optional, Beta)
  /// [jumboFramesEnabled] Indicates whether Jumbo Frames are enabled for the firewall endpoint.
  const FirewallEndpointEndpointSettings({
    this.contentCloudRegion,
    this.httpPartialResponseBlocked,
    this.jumboFramesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentCloudRegion': ?contentCloudRegion,
      'httpPartialResponseBlocked': ?httpPartialResponseBlocked,
      'jumboFramesEnabled': ?jumboFramesEnabled,
    };
  }

  factory FirewallEndpointEndpointSettings.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointEndpointSettings(
      contentCloudRegion: (() { final guardedValue = map['contentCloudRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpPartialResponseBlocked: (() { final guardedValue = map['httpPartialResponseBlocked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jumboFramesEnabled: (() { final guardedValue = map['jumboFramesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
