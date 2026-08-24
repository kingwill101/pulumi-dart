// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsBrowserIsolation {
  /// Specify whether to enable non-identity onramp support for Browser Isolation.
  final pulumi.Input<bool?>? nonIdentityEnabled;
  /// Specify whether to enable Clientless Browser Isolation.
  final pulumi.Input<bool?>? urlBrowserIsolationEnabled;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsBrowserIsolation].
  /// [nonIdentityEnabled] Specify whether to enable non-identity onramp support for Browser Isolation.
  /// [urlBrowserIsolationEnabled] Specify whether to enable Clientless Browser Isolation.
  const ZeroTrustGatewaySettingsSettingsBrowserIsolation({
    this.nonIdentityEnabled,
    this.urlBrowserIsolationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonIdentityEnabled': ?nonIdentityEnabled,
      'urlBrowserIsolationEnabled': ?urlBrowserIsolationEnabled,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsBrowserIsolation.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsBrowserIsolation(
      nonIdentityEnabled: (() { final guardedValue = map['nonIdentityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      urlBrowserIsolationEnabled: (() { final guardedValue = map['urlBrowserIsolationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
