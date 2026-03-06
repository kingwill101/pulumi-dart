// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpecResponseGkehubV1beta {
  /// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  final pulumi.Input<String> billing;
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final pulumi.Input<String> configMembership;

  /// Creates a new [MultiClusterIngressFeatureSpecResponseGkehubV1beta].
  /// [billing] Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  const MultiClusterIngressFeatureSpecResponseGkehubV1beta({
    required this.billing,
    required this.configMembership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billing': billing,
      'configMembership': configMembership,
    };
  }

  factory MultiClusterIngressFeatureSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpecResponseGkehubV1beta(
      billing: pulumi.Input.fromValue(map['billing'] as String),
      configMembership: pulumi.Input.fromValue(map['configMembership'] as String),
    );
  }
}

