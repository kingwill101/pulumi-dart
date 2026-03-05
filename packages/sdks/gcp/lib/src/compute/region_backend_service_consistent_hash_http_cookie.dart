// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_consistent_hash_http_cookie_ttl.dart';

class RegionBackendServiceConsistentHashHttpCookie {
  /// Name of the cookie.
  final pulumi.Input<String>? name;
  /// Path to set for the cookie.
  final pulumi.Input<String>? path;
  /// Lifetime of the cookie.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceConsistentHashHttpCookieTtl>? ttl;

  /// Creates a new [RegionBackendServiceConsistentHashHttpCookie].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  RegionBackendServiceConsistentHashHttpCookie({
    this.name,
    this.path,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'path': ?path,
      'ttl': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceConsistentHashHttpCookieTtl, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory RegionBackendServiceConsistentHashHttpCookie.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceConsistentHashHttpCookie(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionBackendServiceConsistentHashHttpCookieTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

