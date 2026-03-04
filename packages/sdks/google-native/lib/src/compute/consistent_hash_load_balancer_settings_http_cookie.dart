// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookie {
  /// Name of the cookie.
  final pulumi.Input<String>? name;

  /// Path to set for the cookie.
  final pulumi.Input<String>? path;

  /// Lifetime of the cookie.
  final pulumi.Input<Duration>? ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookie].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  ConsistentHashLoadBalancerSettingsHttpCookie({
    this.name,
    this.path,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'path': ?path,
      'ttl':
          ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(
            ttl,
            (value) => value.toMap(),
          ),
    };
  }

  factory ConsistentHashLoadBalancerSettingsHttpCookie.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConsistentHashLoadBalancerSettingsHttpCookie(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Duration.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
