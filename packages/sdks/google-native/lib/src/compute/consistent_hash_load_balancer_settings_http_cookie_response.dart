// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieResponse {
  /// Name of the cookie.
  final pulumi.Input<String> name;
  /// Path to set for the cookie.
  final pulumi.Input<String> path;
  /// Lifetime of the cookie.
  final pulumi.Input<DurationResponse> ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookieResponse].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  ConsistentHashLoadBalancerSettingsHttpCookieResponse({
    required this.name,
    required this.path,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'ttl': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory ConsistentHashLoadBalancerSettingsHttpCookieResponse.fromMap(Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookieResponse(
      name: (map['name'] as String).input(),
      path: (map['path'] as String).input(),
      ttl: (DurationResponse.fromMap((map['ttl'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

