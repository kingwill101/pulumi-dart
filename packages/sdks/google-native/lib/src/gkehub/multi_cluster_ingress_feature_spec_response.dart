// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpecResponse {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final pulumi.Input<String> configMembership;

  /// Creates a new [MultiClusterIngressFeatureSpecResponse].
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  MultiClusterIngressFeatureSpecResponse({
    required this.configMembership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMembership': configMembership,
    };
  }

  factory MultiClusterIngressFeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpecResponse(
      configMembership: (map['configMembership'] as String).input(),
    );
  }
}

