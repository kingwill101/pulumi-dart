// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_strong_session_affinity_cookie_ttl.dart';

class RegionBackendServiceStrongSessionAffinityCookie {
  /// Name of the cookie.
  final pulumi.Input<String>? name;
  /// Path to set for the cookie.
  final pulumi.Input<String>? path;
  /// Lifetime of the cookie.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceStrongSessionAffinityCookieTtl>? ttl;

  /// Creates a new [RegionBackendServiceStrongSessionAffinityCookie].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  RegionBackendServiceStrongSessionAffinityCookie({
    this.name,
    this.path,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'path': ?path,
      'ttl': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceStrongSessionAffinityCookieTtl, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory RegionBackendServiceStrongSessionAffinityCookie.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceStrongSessionAffinityCookie(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionBackendServiceStrongSessionAffinityCookieTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

