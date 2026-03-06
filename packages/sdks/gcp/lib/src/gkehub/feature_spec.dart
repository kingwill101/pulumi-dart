// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_spec_clusterupgrade.dart';
import 'feature_spec_fleetobservability.dart';
import 'feature_spec_multiclusteringress.dart';
import 'feature_spec_rbacrolebindingactuation.dart';

class FeatureSpec {
  /// Clusterupgrade feature spec.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpecClusterupgrade>? clusterupgrade;
  /// Fleet Observability feature spec.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpecFleetobservability>? fleetobservability;
  /// Multicluster Ingress-specific spec.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpecMulticlusteringress>? multiclusteringress;
  /// RBACRolebinding Actuation feature spec.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpecRbacrolebindingactuation>? rbacrolebindingactuation;

  /// Creates a new [FeatureSpec].
  /// [clusterupgrade] Clusterupgrade feature spec.
  /// [fleetobservability] Fleet Observability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  /// [rbacrolebindingactuation] RBACRolebinding Actuation feature spec.
  const FeatureSpec({
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
    this.rbacrolebindingactuation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterupgrade': ?pulumi.Input.mapOptionalInputValue<FeatureSpecClusterupgrade, Map<String, dynamic>>(clusterupgrade, (value) => value.toMap()),
      'fleetobservability': ?pulumi.Input.mapOptionalInputValue<FeatureSpecFleetobservability, Map<String, dynamic>>(fleetobservability, (value) => value.toMap()),
      'multiclusteringress': ?pulumi.Input.mapOptionalInputValue<FeatureSpecMulticlusteringress, Map<String, dynamic>>(multiclusteringress, (value) => value.toMap()),
      'rbacrolebindingactuation': ?pulumi.Input.mapOptionalInputValue<FeatureSpecRbacrolebindingactuation, Map<String, dynamic>>(rbacrolebindingactuation, (value) => value.toMap()),
    };
  }

  factory FeatureSpec.fromMap(Map<String, dynamic> map) {
    return FeatureSpec(
      clusterupgrade: (() { final guardedValue = map['clusterupgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSpecClusterupgrade.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fleetobservability: (() { final guardedValue = map['fleetobservability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSpecFleetobservability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiclusteringress: (() { final guardedValue = map['multiclusteringress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSpecMulticlusteringress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rbacrolebindingactuation: (() { final guardedValue = map['rbacrolebindingactuation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSpecRbacrolebindingactuation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

