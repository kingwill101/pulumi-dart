// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsBrowserIsolation {
  /// Specify whether to enable non-identity onramp support for Browser Isolation.
  final pulumi.Input<bool> nonIdentityEnabled;
  /// Specify whether to enable Clientless Browser Isolation.
  final pulumi.Input<bool> urlBrowserIsolationEnabled;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsBrowserIsolation].
  /// [nonIdentityEnabled] Specify whether to enable non-identity onramp support for Browser Isolation.
  /// [urlBrowserIsolationEnabled] Specify whether to enable Clientless Browser Isolation.
  const GetZeroTrustGatewaySettingsSettingsBrowserIsolation({
    required this.nonIdentityEnabled,
    required this.urlBrowserIsolationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonIdentityEnabled': nonIdentityEnabled,
      'urlBrowserIsolationEnabled': urlBrowserIsolationEnabled,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsBrowserIsolation.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsBrowserIsolation(
      nonIdentityEnabled: pulumi.Input.fromValue(map['nonIdentityEnabled'] as bool),
      urlBrowserIsolationEnabled: pulumi.Input.fromValue(map['urlBrowserIsolationEnabled'] as bool),
    );
  }
}
