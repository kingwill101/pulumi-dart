// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_profile_web_acceleration_profile_web_acceleration_args_doc}
/// The set of arguments for ProfileWebAcceleration.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_web_acceleration_profile_web_acceleration_args_doc}
class ProfileWebAccelerationArgs {
  /// Specifies how quickly the system ages a cache entry. The aging rate ranges from 0 (slowest aging) to 10 (fastest aging). The default value is `9`.
  final pulumi.Input<int>? cacheAgingRate;
  /// Specifies which cache disabling headers sent by clients the system ignores. The default value is `all`.
  final pulumi.Input<String>? cacheClientCacheControlMode;
  /// Inserts Age and Date headers in the response. The default value is `enabled`.
  final pulumi.Input<String>? cacheInsertAgeHeader;
  /// Specifies how long the system considers the cached content to be valid. The default value is `3600 seconds`.
  final pulumi.Input<int>? cacheMaxAge;
  /// Specifies the maximum number of entries that can be in the cache. The default value is `0` (zero), which means that the system does not limit the maximum entries.
  final pulumi.Input<int>? cacheMaxEntries;
  /// Specifies the smallest object that the system considers eligible for caching. The default value is `500 bytes`.
  final pulumi.Input<int>? cacheObjectMaxSize;
  /// Specifies the smallest object that the system considers eligible for caching. The default value is `500 bytes`.
  final pulumi.Input<int>? cacheObjectMinSize;
  /// Specifies the maximum size for the cache. When the cache reaches the maximum size, the system starts removing the oldest entries. The default value is `100 megabytes`.
  final pulumi.Input<int>? cacheSize;
  /// Configures a list of URIs to exclude from the cache. The default value of `none` specifies no URIs are excluded.
  final pulumi.Input<List<String>>? cacheUriExcludes;
  /// Configures a list of URIs to include in the cache even if they would normally be excluded due to factors like object size or HTTP request type. The default value of none specifies no URIs are to be forced into the cache.
  final pulumi.Input<List<String>>? cacheUriIncludeOverrides;
  /// Configures a list of URIs to include in the cache. The default value of `.*` specifies that all URIs are cacheable.
  final pulumi.Input<List<String>>? cacheUriIncludes;
  /// Configures a list of URIs to keep in the cache. The pinning process keeps URIs in cache when they would normally be evicted to make room for more active URIs.
  final pulumi.Input<List<String>>? cacheUriPinneds;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies the name of the web acceleration profile service ,name of Profile should be full path. Full path is the combination of the `partition + web acceleration profile name`,For example `/Common/sample-resource`.
  final pulumi.Input<String> name;

  /// Creates a new [ProfileWebAccelerationArgs].
  /// [cacheAgingRate] Specifies how quickly the system ages a cache entry. The aging rate ranges from 0 (slowest aging) to 10 (fastest aging). The default value is `9`.
  /// [cacheClientCacheControlMode] Specifies which cache disabling headers sent by clients the system ignores. The default value is `all`.
  /// [cacheInsertAgeHeader] Inserts Age and Date headers in the response. The default value is `enabled`.
  /// [cacheMaxAge] Specifies how long the system considers the cached content to be valid. The default value is `3600 seconds`.
  /// [cacheMaxEntries] Specifies the maximum number of entries that can be in the cache. The default value is `0` (zero), which means that the system does not limit the maximum entries.
  /// [cacheObjectMaxSize] Specifies the smallest object that the system considers eligible for caching. The default value is `500 bytes`.
  /// [cacheObjectMinSize] Specifies the smallest object that the system considers eligible for caching. The default value is `500 bytes`.
  /// [cacheSize] Specifies the maximum size for the cache. When the cache reaches the maximum size, the system starts removing the oldest entries. The default value is `100 megabytes`.
  /// [cacheUriExcludes] Configures a list of URIs to exclude from the cache. The default value of `none` specifies no URIs are excluded.
  /// [cacheUriIncludeOverrides] Configures a list of URIs to include in the cache even if they would normally be excluded due to factors like object size or HTTP request type. The default value of none specifies no URIs are to be forced into the cache.
  /// [cacheUriIncludes] Configures a list of URIs to include in the cache. The default value of `.*` specifies that all URIs are cacheable.
  /// [cacheUriPinneds] Configures a list of URIs to keep in the cache. The pinning process keeps URIs in cache when they would normally be evicted to make room for more active URIs.
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [name] Specifies the name of the web acceleration profile service ,name of Profile should be full path. Full path is the combination of the `partition + web acceleration profile name`,For example `/Common/sample-resource`.
  const ProfileWebAccelerationArgs({
    this.cacheAgingRate,
    this.cacheClientCacheControlMode,
    this.cacheInsertAgeHeader,
    this.cacheMaxAge,
    this.cacheMaxEntries,
    this.cacheObjectMaxSize,
    this.cacheObjectMinSize,
    this.cacheSize,
    this.cacheUriExcludes,
    this.cacheUriIncludeOverrides,
    this.cacheUriIncludes,
    this.cacheUriPinneds,
    this.defaultsFrom,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheAgingRate': ?cacheAgingRate,
      'cacheClientCacheControlMode': ?cacheClientCacheControlMode,
      'cacheInsertAgeHeader': ?cacheInsertAgeHeader,
      'cacheMaxAge': ?cacheMaxAge,
      'cacheMaxEntries': ?cacheMaxEntries,
      'cacheObjectMaxSize': ?cacheObjectMaxSize,
      'cacheObjectMinSize': ?cacheObjectMinSize,
      'cacheSize': ?cacheSize,
      'cacheUriExcludes': ?cacheUriExcludes,
      'cacheUriIncludeOverrides': ?cacheUriIncludeOverrides,
      'cacheUriIncludes': ?cacheUriIncludes,
      'cacheUriPinneds': ?cacheUriPinneds,
      'defaultsFrom': ?defaultsFrom,
      'name': name,
    };
  }

  factory ProfileWebAccelerationArgs.fromMap(Map<String, dynamic> map) {
    return ProfileWebAccelerationArgs(
      cacheAgingRate: (() { final guardedValue = map['cacheAgingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheClientCacheControlMode: (() { final guardedValue = map['cacheClientCacheControlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheInsertAgeHeader: (() { final guardedValue = map['cacheInsertAgeHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheMaxAge: (() { final guardedValue = map['cacheMaxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheMaxEntries: (() { final guardedValue = map['cacheMaxEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheObjectMaxSize: (() { final guardedValue = map['cacheObjectMaxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheObjectMinSize: (() { final guardedValue = map['cacheObjectMinSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheSize: (() { final guardedValue = map['cacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheUriExcludes: (() { final guardedValue = map['cacheUriExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cacheUriIncludeOverrides: (() { final guardedValue = map['cacheUriIncludeOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cacheUriIncludes: (() { final guardedValue = map['cacheUriIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cacheUriPinneds: (() { final guardedValue = map['cacheUriPinneds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

