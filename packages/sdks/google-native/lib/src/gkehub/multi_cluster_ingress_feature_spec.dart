// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpec {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final pulumi.Input<String>? configMembership;

  /// Creates a new [MultiClusterIngressFeatureSpec].
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  MultiClusterIngressFeatureSpec({
    this.configMembership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMembership': ?configMembership,
    };
  }

  factory MultiClusterIngressFeatureSpec.fromMap(Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpec(
      configMembership: map['configMembership'] == null ? null : (map['configMembership'] as String).input(),
    );
  }
}

