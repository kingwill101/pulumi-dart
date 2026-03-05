// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_virtual_repository_config_upstream_policy.dart';

class GetRepositoryVirtualRepositoryConfig {
  /// Policies that configure the upstream artifacts distributed by the Virtual
  /// Repository. Upstream policies cannot be set on a standard repository.
  final pulumi.Input<List<GetRepositoryVirtualRepositoryConfigUpstreamPolicy>> upstreamPolicies;

  /// Creates a new [GetRepositoryVirtualRepositoryConfig].
  /// [upstreamPolicies] Policies that configure the upstream artifacts distributed by the Virtual
  GetRepositoryVirtualRepositoryConfig({
    required this.upstreamPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upstreamPolicies': pulumi.Input.mapInputValue<List<GetRepositoryVirtualRepositoryConfigUpstreamPolicy>, List<Map<String, dynamic>>>(upstreamPolicies, (value) => pulumi.Input.encodeList<GetRepositoryVirtualRepositoryConfigUpstreamPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRepositoryVirtualRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return GetRepositoryVirtualRepositoryConfig(
      upstreamPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRepositoryVirtualRepositoryConfigUpstreamPolicy>(map['upstreamPolicies']!, (value) => GetRepositoryVirtualRepositoryConfigUpstreamPolicy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

