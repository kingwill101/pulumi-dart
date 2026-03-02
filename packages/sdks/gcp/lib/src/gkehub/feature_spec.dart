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
  FeatureSpec({
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
      clusterupgrade: map['clusterupgrade'] == null ? null : (FeatureSpecClusterupgrade.fromMap((map['clusterupgrade']! as Map).cast<String, dynamic>())).input(),
      fleetobservability: map['fleetobservability'] == null ? null : (FeatureSpecFleetobservability.fromMap((map['fleetobservability']! as Map).cast<String, dynamic>())).input(),
      multiclusteringress: map['multiclusteringress'] == null ? null : (FeatureSpecMulticlusteringress.fromMap((map['multiclusteringress']! as Map).cast<String, dynamic>())).input(),
      rbacrolebindingactuation: map['rbacrolebindingactuation'] == null ? null : (FeatureSpecRbacrolebindingactuation.fromMap((map['rbacrolebindingactuation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

