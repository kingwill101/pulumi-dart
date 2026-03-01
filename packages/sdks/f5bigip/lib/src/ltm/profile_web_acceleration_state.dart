// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileWebAcceleration resources.
class ProfileWebAccelerationState {
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
  final pulumi.Input<String>? name;

  /// Creates a new [ProfileWebAccelerationState].
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
  ProfileWebAccelerationState({
    pulumi.Output<int>? cacheAgingRate,
    pulumi.Output<String>? cacheClientCacheControlMode,
    pulumi.Output<String>? cacheInsertAgeHeader,
    pulumi.Output<int>? cacheMaxAge,
    pulumi.Output<int>? cacheMaxEntries,
    pulumi.Output<int>? cacheObjectMaxSize,
    pulumi.Output<int>? cacheObjectMinSize,
    pulumi.Output<int>? cacheSize,
    pulumi.Output<List<String>>? cacheUriExcludes,
    pulumi.Output<List<String>>? cacheUriIncludeOverrides,
    pulumi.Output<List<String>>? cacheUriIncludes,
    pulumi.Output<List<String>>? cacheUriPinneds,
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? name,
  }) :
      cacheAgingRate = pulumi.Input.asOptionalInput<int>(cacheAgingRate),
      cacheClientCacheControlMode = pulumi.Input.asOptionalInput<String>(cacheClientCacheControlMode),
      cacheInsertAgeHeader = pulumi.Input.asOptionalInput<String>(cacheInsertAgeHeader),
      cacheMaxAge = pulumi.Input.asOptionalInput<int>(cacheMaxAge),
      cacheMaxEntries = pulumi.Input.asOptionalInput<int>(cacheMaxEntries),
      cacheObjectMaxSize = pulumi.Input.asOptionalInput<int>(cacheObjectMaxSize),
      cacheObjectMinSize = pulumi.Input.asOptionalInput<int>(cacheObjectMinSize),
      cacheSize = pulumi.Input.asOptionalInput<int>(cacheSize),
      cacheUriExcludes = pulumi.Input.asOptionalInput<List<String>>(cacheUriExcludes),
      cacheUriIncludeOverrides = pulumi.Input.asOptionalInput<List<String>>(cacheUriIncludeOverrides),
      cacheUriIncludes = pulumi.Input.asOptionalInput<List<String>>(cacheUriIncludes),
      cacheUriPinneds = pulumi.Input.asOptionalInput<List<String>>(cacheUriPinneds),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      'name': ?name,
    };
  }

  factory ProfileWebAccelerationState.fromMap(Map<String, dynamic> map) {
    return ProfileWebAccelerationState(
      cacheAgingRate: map['cacheAgingRate'] == null ? null : pulumi.Output.create<int>(map['cacheAgingRate'] as int),
      cacheClientCacheControlMode: map['cacheClientCacheControlMode'] == null ? null : pulumi.Output.create<String>(map['cacheClientCacheControlMode'] as String),
      cacheInsertAgeHeader: map['cacheInsertAgeHeader'] == null ? null : pulumi.Output.create<String>(map['cacheInsertAgeHeader'] as String),
      cacheMaxAge: map['cacheMaxAge'] == null ? null : pulumi.Output.create<int>(map['cacheMaxAge'] as int),
      cacheMaxEntries: map['cacheMaxEntries'] == null ? null : pulumi.Output.create<int>(map['cacheMaxEntries'] as int),
      cacheObjectMaxSize: map['cacheObjectMaxSize'] == null ? null : pulumi.Output.create<int>(map['cacheObjectMaxSize'] as int),
      cacheObjectMinSize: map['cacheObjectMinSize'] == null ? null : pulumi.Output.create<int>(map['cacheObjectMinSize'] as int),
      cacheSize: map['cacheSize'] == null ? null : pulumi.Output.create<int>(map['cacheSize'] as int),
      cacheUriExcludes: map['cacheUriExcludes'] == null ? null : pulumi.Output.create<List<String>>((map['cacheUriExcludes'] as List).cast<String>()),
      cacheUriIncludeOverrides: map['cacheUriIncludeOverrides'] == null ? null : pulumi.Output.create<List<String>>((map['cacheUriIncludeOverrides'] as List).cast<String>()),
      cacheUriIncludes: map['cacheUriIncludes'] == null ? null : pulumi.Output.create<List<String>>((map['cacheUriIncludes'] as List).cast<String>()),
      cacheUriPinneds: map['cacheUriPinneds'] == null ? null : pulumi.Output.create<List<String>>((map['cacheUriPinneds'] as List).cast<String>()),
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

