// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of properties of a link provider.
class VpnLinkProviderPropertiesResponse {
  /// Name of the link provider.
  final pulumi.Input<String>? linkProviderName;
  /// Link speed.
  final pulumi.Input<int>? linkSpeedInMbps;

  /// Creates a new [VpnLinkProviderPropertiesResponse].
  /// [linkProviderName] Name of the link provider.
  /// [linkSpeedInMbps] Link speed.
  const VpnLinkProviderPropertiesResponse({
    this.linkProviderName,
    this.linkSpeedInMbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkProviderName': ?linkProviderName,
      'linkSpeedInMbps': ?linkSpeedInMbps,
    };
  }

  factory VpnLinkProviderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VpnLinkProviderPropertiesResponse(
      linkProviderName: (() { final guardedValue = map['linkProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkSpeedInMbps: (() { final guardedValue = map['linkSpeedInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

