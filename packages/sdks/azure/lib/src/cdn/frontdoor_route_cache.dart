// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRouteCache {
  /// Is content compression enabled? Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// > **Note:** Content won't be compressed when the requested content is smaller than `1 KB` or larger than `8 MB`(inclusive).
  final pulumi.Input<bool>? compressionEnabled;
  /// A list of one or more `Content types` (formerly known as `MIME types`) to compress. Possible values include `application/eot`, `application/font`, `application/font-sfnt`, `application/javascript`, `application/json`, `application/opentype`, `application/otf`, `application/pkcs7-mime`, `application/truetype`, `application/ttf`, `application/vnd.ms-fontobject`, `application/xhtml+xml`, `application/xml`, `application/xml+rss`, `application/x-font-opentype`, `application/x-font-truetype`, `application/x-font-ttf`, `application/x-httpd-cgi`, `application/x-mpegurl`, `application/x-opentype`, `application/x-otf`, `application/x-perl`, `application/x-ttf`, `application/x-javascript`, `font/eot`, `font/ttf`, `font/otf`, `font/opentype`, `image/svg+xml`, `text/css`, `text/csv`, `text/html`, `text/javascript`, `text/js`, `text/plain`, `text/richtext`, `text/tab-separated-values`, `text/xml`, `text/x-script`, `text/x-component` or `text/x-java-source`.
  final pulumi.Input<List<String>>? contentTypesToCompresses;
  /// Defines how the Front Door Route will cache requests that include query strings. Possible values include `IgnoreQueryString`, `IgnoreSpecifiedQueryStrings`, `IncludeSpecifiedQueryStrings` or `UseQueryString`. Defaults to `IgnoreQueryString`.
  ///
  /// > **Note:** The value of the `query_string_caching_behavior` determines if the `query_strings` field will be used as an include list or an ignore list.
  final pulumi.Input<String>? queryStringCachingBehavior;
  /// Query strings to include or ignore.
  final pulumi.Input<List<String>>? queryStrings;

  /// Creates a new [FrontdoorRouteCache].
  /// [compressionEnabled] Is content compression enabled? Possible values are `true` or `false`. Defaults to `false`.
  /// [contentTypesToCompresses] A list of one or more `Content types` (formerly known as `MIME types`) to compress. Possible values include `application/eot`, `application/font`, `application/font-sfnt`, `application/javascript`, `application/json`, `application/opentype`, `application/otf`, `application/pkcs7-mime`, `application/truetype`, `application/ttf`, `application/vnd.ms-fontobject`, `application/xhtml+xml`, `application/xml`, `application/xml+rss`, `application/x-font-opentype`, `application/x-font-truetype`, `application/x-font-ttf`, `application/x-httpd-cgi`, `application/x-mpegurl`, `application/x-opentype`, `application/x-otf`, `application/x-perl`, `application/x-ttf`, `application/x-javascript`, `font/eot`, `font/ttf`, `font/otf`, `font/opentype`, `image/svg+xml`, `text/css`, `text/csv`, `text/html`, `text/javascript`, `text/js`, `text/plain`, `text/richtext`, `text/tab-separated-values`, `text/xml`, `text/x-script`, `text/x-component` or `text/x-java-source`.
  /// [queryStringCachingBehavior] Defines how the Front Door Route will cache requests that include query strings. Possible values include `IgnoreQueryString`, `IgnoreSpecifiedQueryStrings`, `IncludeSpecifiedQueryStrings` or `UseQueryString`. Defaults to `IgnoreQueryString`.
  /// [queryStrings] Query strings to include or ignore.
  FrontdoorRouteCache({
    this.compressionEnabled,
    this.contentTypesToCompresses,
    this.queryStringCachingBehavior,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionEnabled': ?compressionEnabled,
      'contentTypesToCompresses': ?contentTypesToCompresses,
      'queryStringCachingBehavior': ?queryStringCachingBehavior,
      'queryStrings': ?queryStrings,
    };
  }

  factory FrontdoorRouteCache.fromMap(Map<String, dynamic> map) {
    return FrontdoorRouteCache(
      compressionEnabled: map['compressionEnabled'] == null ? null : (map['compressionEnabled']! as bool).input(),
      contentTypesToCompresses: map['contentTypesToCompresses'] == null ? null : ((map['contentTypesToCompresses']! as List).cast<String>()).input(),
      queryStringCachingBehavior: map['queryStringCachingBehavior'] == null ? null : (map['queryStringCachingBehavior']! as String).input(),
      queryStrings: map['queryStrings'] == null ? null : ((map['queryStrings']! as List).cast<String>()).input(),
    );
  }
}

