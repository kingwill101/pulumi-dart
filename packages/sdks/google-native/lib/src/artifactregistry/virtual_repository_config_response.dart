// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upstream_policy_response.dart';

/// Virtual repository configuration.
class VirtualRepositoryConfigResponse {
  /// Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream policies cannot be set on a standard repository.
  final pulumi.Input<List<UpstreamPolicyResponse>> upstreamPolicies;

  /// Creates a new [VirtualRepositoryConfigResponse].
  /// [upstreamPolicies] Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream policies cannot be set on a standard repository.
  VirtualRepositoryConfigResponse({required this.upstreamPolicies});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upstreamPolicies':
          pulumi.Input.mapInputValue<
            List<UpstreamPolicyResponse>,
            List<Map<String, dynamic>>
          >(
            upstreamPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  UpstreamPolicyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualRepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return VirtualRepositoryConfigResponse(
      upstreamPolicies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<UpstreamPolicyResponse>(
          map['upstreamPolicies']!,
          (value) => UpstreamPolicyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
