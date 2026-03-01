// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudGatewayLocalResponseCachePerInstance {
  /// Specifies the maximum size of cache (10MB, 900KB, 1GB...) to determine if the cache needs to evict some entries.
  final String? size;
  /// Specifies the time before a cached entry is expired (300s, 5m, 1h...).
  final String? timeToLive;

  /// Creates a new [SpringCloudGatewayLocalResponseCachePerInstance].
  /// [size] Specifies the maximum size of cache (10MB, 900KB, 1GB...) to determine if the cache needs to evict some entries.
  /// [timeToLive] Specifies the time before a cached entry is expired (300s, 5m, 1h...).
  SpringCloudGatewayLocalResponseCachePerInstance({
    this.size,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'timeToLive': ?timeToLive,
    };
  }

  factory SpringCloudGatewayLocalResponseCachePerInstance.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayLocalResponseCachePerInstance(
      size: map['size'] == null ? null : map['size'] as String,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as String,
    );
  }
}

