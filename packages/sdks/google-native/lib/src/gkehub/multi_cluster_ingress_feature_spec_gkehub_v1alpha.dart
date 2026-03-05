// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_cluster_ingress_feature_spec_billing.dart';

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpecGkehubV1alpha {
  /// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  final pulumi.Input<MultiClusterIngressFeatureSpecBilling>? billing;
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final pulumi.Input<String>? configMembership;

  /// Creates a new [MultiClusterIngressFeatureSpecGkehubV1alpha].
  /// [billing] Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  MultiClusterIngressFeatureSpecGkehubV1alpha({
    this.billing,
    this.configMembership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billing': ?pulumi.Input.mapOptionalInputValue<MultiClusterIngressFeatureSpecBilling, String>(billing, (value) => value.wireValue),
      'configMembership': ?configMembership,
    };
  }

  factory MultiClusterIngressFeatureSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpecGkehubV1alpha(
      billing: (() { final guardedValue = map['billing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiClusterIngressFeatureSpecBilling.fromValue(guardedValue as String)); })(),
      configMembership: (() { final guardedValue = map['configMembership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

