// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subgroup profile of the interconnect group resource.
class SubgroupProfile {
  /// Scope of the subgroup profile.
  final pulumi.Input<dynamic>? scope;
  /// Size of the subgroup profile.
  final pulumi.Input<int?>? size;
  /// VM size of the subgroup profile.
  final pulumi.Input<String> vmSize;

  /// Creates a new [SubgroupProfile].
  /// [scope] Scope of the subgroup profile.
  /// [size] Size of the subgroup profile.
  /// [vmSize] VM size of the subgroup profile.
  const SubgroupProfile({
    this.scope,
    this.size,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'size': ?size,
      'vmSize': vmSize,
    };
  }

  factory SubgroupProfile.fromMap(Map<String, dynamic> map) {
    return SubgroupProfile(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      vmSize: pulumi.Input.fromValue(map['vmSize'] as String),
    );
  }
}
