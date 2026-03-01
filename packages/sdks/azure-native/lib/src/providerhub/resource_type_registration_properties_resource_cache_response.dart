// ignore_for_file: unused_element, unnecessary_cast


/// Resource cache options.
class ResourceTypeRegistrationPropertiesResourceCacheResponse {
  /// Enable resource cache.
  final bool? enableResourceCache;
  /// Resource cache expiration timespan. This is a TimeSpan property.
  final String? resourceCacheExpirationTimespan;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceCacheResponse].
  /// [enableResourceCache] Enable resource cache.
  /// [resourceCacheExpirationTimespan] Resource cache expiration timespan. This is a TimeSpan property.
  ResourceTypeRegistrationPropertiesResourceCacheResponse({
    this.enableResourceCache,
    this.resourceCacheExpirationTimespan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableResourceCache': ?enableResourceCache,
      'resourceCacheExpirationTimespan': ?resourceCacheExpirationTimespan,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceCacheResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceCacheResponse(
      enableResourceCache: map['enableResourceCache'] == null ? null : map['enableResourceCache'] as bool,
      resourceCacheExpirationTimespan: map['resourceCacheExpirationTimespan'] == null ? null : map['resourceCacheExpirationTimespan'] as String,
    );
  }
}

