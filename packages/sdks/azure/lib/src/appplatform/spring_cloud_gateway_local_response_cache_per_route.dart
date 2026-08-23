// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudGatewayLocalResponseCachePerRoute {
  /// Specifies the maximum size of cache (10MB, 900KB, 1GB...) to determine if the cache needs to evict some entries.
  final pulumi.Input<String>? size;
  /// Specifies the time before a cached entry is expired (300s, 5m, 1h...).
  final pulumi.Input<String>? timeToLive;

  /// Creates a new [SpringCloudGatewayLocalResponseCachePerRoute].
  /// [size] Specifies the maximum size of cache (10MB, 900KB, 1GB...) to determine if the cache needs to evict some entries.
  /// [timeToLive] Specifies the time before a cached entry is expired (300s, 5m, 1h...).
  const SpringCloudGatewayLocalResponseCachePerRoute({
    this.size,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'timeToLive': ?timeToLive,
    };
  }

  factory SpringCloudGatewayLocalResponseCachePerRoute.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayLocalResponseCachePerRoute(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeToLive: (() { final guardedValue = map['timeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
