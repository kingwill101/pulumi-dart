// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_compute_v1.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieComputeV1 {
  /// Name of the cookie.
  final pulumi.Input<String>? name;
  /// Path to set for the cookie.
  final pulumi.Input<String>? path;
  /// Lifetime of the cookie.
  final pulumi.Input<DurationComputeV1>? ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookieComputeV1].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  ConsistentHashLoadBalancerSettingsHttpCookieComputeV1({
    this.name,
    this.path,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'path': ?path,
      'ttl': ?pulumi.Input.mapOptionalInputValue<DurationComputeV1, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory ConsistentHashLoadBalancerSettingsHttpCookieComputeV1.fromMap(Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookieComputeV1(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      ttl: map['ttl'] == null ? null : (DurationComputeV1.fromMap((map['ttl'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

