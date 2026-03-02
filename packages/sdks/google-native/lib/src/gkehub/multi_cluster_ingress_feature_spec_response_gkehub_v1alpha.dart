// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpecResponseGkehubV1alpha {
  /// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  final pulumi.Input<String> billing;
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final pulumi.Input<String> configMembership;

  /// Creates a new [MultiClusterIngressFeatureSpecResponseGkehubV1alpha].
  /// [billing] Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  MultiClusterIngressFeatureSpecResponseGkehubV1alpha({
    required this.billing,
    required this.configMembership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billing': billing,
      'configMembership': configMembership,
    };
  }

  factory MultiClusterIngressFeatureSpecResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpecResponseGkehubV1alpha(
      billing: (map['billing'] as String).input(),
      configMembership: (map['configMembership'] as String).input(),
    );
  }
}

