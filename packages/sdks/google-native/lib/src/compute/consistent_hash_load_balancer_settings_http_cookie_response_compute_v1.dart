// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_v1.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1 {
  /// Name of the cookie.
  final pulumi.Input<String> name;
  /// Path to set for the cookie.
  final pulumi.Input<String> path;
  /// Lifetime of the cookie.
  final pulumi.Input<DurationResponseComputeV1> ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  const ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1({
    required this.name,
    required this.path,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'ttl': pulumi.Input.mapInputValue<DurationResponseComputeV1, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      ttl: pulumi.Input.fromValue(DurationResponseComputeV1.fromMap((map['ttl']! as Map).cast<String, dynamic>())),
    );
  }
}

