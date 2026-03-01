// ignore_for_file: unused_element, unnecessary_cast


/// Resource cache options.
class ResourceTypeRegistrationPropertiesResourceCache {
  /// Enable resource cache.
  final bool? enableResourceCache;
  /// Resource cache expiration timespan. This is a TimeSpan property.
  final String? resourceCacheExpirationTimespan;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceCache].
  /// [enableResourceCache] Enable resource cache.
  /// [resourceCacheExpirationTimespan] Resource cache expiration timespan. This is a TimeSpan property.
  ResourceTypeRegistrationPropertiesResourceCache({
    this.enableResourceCache,
    this.resourceCacheExpirationTimespan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableResourceCache': ?enableResourceCache,
      'resourceCacheExpirationTimespan': ?resourceCacheExpirationTimespan,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceCache.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceCache(
      enableResourceCache: map['enableResourceCache'] == null ? null : map['enableResourceCache'] as bool,
      resourceCacheExpirationTimespan: map['resourceCacheExpirationTimespan'] == null ? null : map['resourceCacheExpirationTimespan'] as String,
    );
  }
}

