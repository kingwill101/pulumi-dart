// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_consistent_hash_http_cookie_ttl.dart';

class BackendServiceConsistentHashHttpCookie {
  /// Name of the cookie.
  final pulumi.Input<String>? name;
  /// Path to set for the cookie.
  final pulumi.Input<String>? path;
  /// Lifetime of the cookie.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceConsistentHashHttpCookieTtl>? ttl;

  /// Creates a new [BackendServiceConsistentHashHttpCookie].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  BackendServiceConsistentHashHttpCookie({
    this.name,
    this.path,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'path': ?path,
      'ttl': ?pulumi.Input.mapOptionalInputValue<BackendServiceConsistentHashHttpCookieTtl, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory BackendServiceConsistentHashHttpCookie.fromMap(Map<String, dynamic> map) {
    return BackendServiceConsistentHashHttpCookie(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      ttl: map['ttl'] == null ? null : (BackendServiceConsistentHashHttpCookieTtl.fromMap((map['ttl']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

