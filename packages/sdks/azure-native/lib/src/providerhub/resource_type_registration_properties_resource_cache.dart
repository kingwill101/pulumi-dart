// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource cache options.
class ResourceTypeRegistrationPropertiesResourceCache {
  /// Enable resource cache.
  final pulumi.Input<bool>? enableResourceCache;
  /// Resource cache expiration timespan. This is a TimeSpan property.
  final pulumi.Input<String>? resourceCacheExpirationTimespan;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceCache].
  /// [enableResourceCache] Enable resource cache.
  /// [resourceCacheExpirationTimespan] Resource cache expiration timespan. This is a TimeSpan property.
  const ResourceTypeRegistrationPropertiesResourceCache({
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
      enableResourceCache: (() { final guardedValue = map['enableResourceCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceCacheExpirationTimespan: (() { final guardedValue = map['resourceCacheExpirationTimespan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
