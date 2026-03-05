// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnSiteO365PolicyTrafficCategory {
  /// Is allow endpoint enabled? The `Allow` endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to `false`.
  final pulumi.Input<bool>? allowEndpointEnabled;
  /// Is default endpoint enabled? The `Default` endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to `false`.
  final pulumi.Input<bool>? defaultEndpointEnabled;
  /// Is optimize endpoint enabled? The `Optimize` endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to `false`.
  final pulumi.Input<bool>? optimizeEndpointEnabled;

  /// Creates a new [VpnSiteO365PolicyTrafficCategory].
  /// [allowEndpointEnabled] Is allow endpoint enabled? The `Allow` endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to `false`.
  /// [defaultEndpointEnabled] Is default endpoint enabled? The `Default` endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to `false`.
  /// [optimizeEndpointEnabled] Is optimize endpoint enabled? The `Optimize` endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to `false`.
  VpnSiteO365PolicyTrafficCategory({
    this.allowEndpointEnabled,
    this.defaultEndpointEnabled,
    this.optimizeEndpointEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEndpointEnabled': ?allowEndpointEnabled,
      'defaultEndpointEnabled': ?defaultEndpointEnabled,
      'optimizeEndpointEnabled': ?optimizeEndpointEnabled,
    };
  }

  factory VpnSiteO365PolicyTrafficCategory.fromMap(Map<String, dynamic> map) {
    return VpnSiteO365PolicyTrafficCategory(
      allowEndpointEnabled: (() { final guardedValue = map['allowEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultEndpointEnabled: (() { final guardedValue = map['defaultEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      optimizeEndpointEnabled: (() { final guardedValue = map['optimizeEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

