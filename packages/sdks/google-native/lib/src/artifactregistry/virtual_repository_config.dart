// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upstream_policy.dart';

/// Virtual repository configuration.
class VirtualRepositoryConfig {
  /// Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream policies cannot be set on a standard repository.
  final pulumi.Input<List<UpstreamPolicy>>? upstreamPolicies;

  /// Creates a new [VirtualRepositoryConfig].
  /// [upstreamPolicies] Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream policies cannot be set on a standard repository.
  VirtualRepositoryConfig({
    this.upstreamPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upstreamPolicies': ?pulumi.Input.mapOptionalInputValue<List<UpstreamPolicy>, List<Map<String, dynamic>>>(upstreamPolicies, (value) => pulumi.Input.encodeList<UpstreamPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return VirtualRepositoryConfig(
      upstreamPolicies: (() { final guardedValue = map['upstreamPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UpstreamPolicy>(guardedValue, (value) => UpstreamPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

