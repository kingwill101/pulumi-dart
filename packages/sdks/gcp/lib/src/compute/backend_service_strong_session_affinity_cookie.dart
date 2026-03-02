// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_strong_session_affinity_cookie_ttl.dart';

class BackendServiceStrongSessionAffinityCookie {
  /// Name of the cookie.
  final pulumi.Input<String>? name;
  /// Path to set for the cookie.
  final pulumi.Input<String>? path;
  /// Lifetime of the cookie.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceStrongSessionAffinityCookieTtl>? ttl;

  /// Creates a new [BackendServiceStrongSessionAffinityCookie].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  BackendServiceStrongSessionAffinityCookie({
    this.name,
    this.path,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'path': ?path,
      'ttl': ?pulumi.Input.mapOptionalInputValue<BackendServiceStrongSessionAffinityCookieTtl, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory BackendServiceStrongSessionAffinityCookie.fromMap(Map<String, dynamic> map) {
    return BackendServiceStrongSessionAffinityCookie(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      ttl: map['ttl'] == null ? null : (BackendServiceStrongSessionAffinityCookieTtl.fromMap((map['ttl'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

