// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subgroup profile of the interconnect group resource.
class SubgroupProfileResponse {
  /// Scope of the subgroup profile.
  final pulumi.Input<String>? scope;
  /// Size of the subgroup profile.
  final pulumi.Input<int>? size;
  /// VM size of the subgroup profile.
  final pulumi.Input<String> vmSize;

  /// Creates a new [SubgroupProfileResponse].
  /// [scope] Scope of the subgroup profile.
  /// [size] Size of the subgroup profile.
  /// [vmSize] VM size of the subgroup profile.
  const SubgroupProfileResponse({
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

  factory SubgroupProfileResponse.fromMap(Map<String, dynamic> map) {
    return SubgroupProfileResponse(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vmSize: pulumi.Input.fromValue(map['vmSize'] as String),
    );
  }
}
