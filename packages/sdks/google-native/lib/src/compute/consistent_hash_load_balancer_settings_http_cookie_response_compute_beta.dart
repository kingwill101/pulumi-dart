// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_beta.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta {
  /// Name of the cookie.
  final pulumi.Input<String> name;
  /// Path to set for the cookie.
  final pulumi.Input<String> path;
  /// Lifetime of the cookie.
  final pulumi.Input<DurationResponseComputeBeta> ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  const ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta({
    required this.name,
    required this.path,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'ttl': pulumi.Input.mapInputValue<DurationResponseComputeBeta, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      ttl: pulumi.Input.fromValue(DurationResponseComputeBeta.fromMap((map['ttl']! as Map).cast<String, dynamic>())),
    );
  }
}
