// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of properties of a link provider.
class VpnLinkProviderProperties {
  /// Name of the link provider.
  final pulumi.Input<String>? linkProviderName;

  /// Link speed.
  final pulumi.Input<int>? linkSpeedInMbps;

  /// Creates a new [VpnLinkProviderProperties].
  /// [linkProviderName] Name of the link provider.
  /// [linkSpeedInMbps] Link speed.
  VpnLinkProviderProperties({this.linkProviderName, this.linkSpeedInMbps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkProviderName': ?linkProviderName,
      'linkSpeedInMbps': ?linkSpeedInMbps,
    };
  }

  factory VpnLinkProviderProperties.fromMap(Map<String, dynamic> map) {
    return VpnLinkProviderProperties(
      linkProviderName: (() {
        final guardedValue = map['linkProviderName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkSpeedInMbps: (() {
        final guardedValue = map['linkSpeedInMbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
