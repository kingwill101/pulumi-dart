// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceCustomProfilesResultBrowserExtensionConfig {
  /// Whether the user may disable the browser extension proxy.
  /// Available values: "unlocked", "locked".
  final pulumi.Input<String> proxyControl;
  /// Whether the browser extension proxy is active.
  final pulumi.Input<bool> proxyEnabled;

  /// Creates a new [GetZeroTrustDeviceCustomProfilesResultBrowserExtensionConfig].
  /// [proxyControl] Whether the user may disable the browser extension proxy.
  /// [proxyEnabled] Whether the browser extension proxy is active.
  const GetZeroTrustDeviceCustomProfilesResultBrowserExtensionConfig({
    required this.proxyControl,
    required this.proxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyControl': proxyControl,
      'proxyEnabled': proxyEnabled,
    };
  }

  factory GetZeroTrustDeviceCustomProfilesResultBrowserExtensionConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfilesResultBrowserExtensionConfig(
      proxyControl: pulumi.Input.fromValue(map['proxyControl'] as String),
      proxyEnabled: pulumi.Input.fromValue(map['proxyEnabled'] as bool),
    );
  }
}
