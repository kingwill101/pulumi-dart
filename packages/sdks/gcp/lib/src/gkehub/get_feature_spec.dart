// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_spec_clusterupgrade.dart';
import 'get_feature_spec_fleetobservability.dart';
import 'get_feature_spec_multiclusteringress.dart';
import 'get_feature_spec_rbacrolebindingactuation.dart';
import 'get_feature_spec_workloadidentity.dart';

class GetFeatureSpec {
  /// Clusterupgrade feature spec.
  final pulumi.Input<List<GetFeatureSpecClusterupgrade>> clusterupgrades;
  /// Fleet Observability feature spec.
  final pulumi.Input<List<GetFeatureSpecFleetobservability>> fleetobservabilities;
  /// Multicluster Ingress-specific spec.
  final pulumi.Input<List<GetFeatureSpecMulticlusteringress>> multiclusteringresses;
  /// RBACRolebinding Actuation feature spec.
  final pulumi.Input<List<GetFeatureSpecRbacrolebindingactuation>> rbacrolebindingactuations;
  /// Workload Identity feature spec.
  final pulumi.Input<List<GetFeatureSpecWorkloadidentity>> workloadidentities;

  /// Creates a new [GetFeatureSpec].
  /// [clusterupgrades] Clusterupgrade feature spec.
  /// [fleetobservabilities] Fleet Observability feature spec.
  /// [multiclusteringresses] Multicluster Ingress-specific spec.
  /// [rbacrolebindingactuations] RBACRolebinding Actuation feature spec.
  /// [workloadidentities] Workload Identity feature spec.
  const GetFeatureSpec({
    required this.clusterupgrades,
    required this.fleetobservabilities,
    required this.multiclusteringresses,
    required this.rbacrolebindingactuations,
    required this.workloadidentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterupgrades': pulumi.Input.mapInputValue<List<GetFeatureSpecClusterupgrade>, List<Map<String, dynamic>>>(clusterupgrades, (value) => pulumi.Input.encodeList<GetFeatureSpecClusterupgrade, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fleetobservabilities': pulumi.Input.mapInputValue<List<GetFeatureSpecFleetobservability>, List<Map<String, dynamic>>>(fleetobservabilities, (value) => pulumi.Input.encodeList<GetFeatureSpecFleetobservability, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiclusteringresses': pulumi.Input.mapInputValue<List<GetFeatureSpecMulticlusteringress>, List<Map<String, dynamic>>>(multiclusteringresses, (value) => pulumi.Input.encodeList<GetFeatureSpecMulticlusteringress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rbacrolebindingactuations': pulumi.Input.mapInputValue<List<GetFeatureSpecRbacrolebindingactuation>, List<Map<String, dynamic>>>(rbacrolebindingactuations, (value) => pulumi.Input.encodeList<GetFeatureSpecRbacrolebindingactuation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workloadidentities': pulumi.Input.mapInputValue<List<GetFeatureSpecWorkloadidentity>, List<Map<String, dynamic>>>(workloadidentities, (value) => pulumi.Input.encodeList<GetFeatureSpecWorkloadidentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFeatureSpec.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpec(
      clusterupgrades: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecClusterupgrade>(map['clusterupgrades']!, (value) => GetFeatureSpecClusterupgrade.fromMap((value as Map).cast<String, dynamic>()))),
      fleetobservabilities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecFleetobservability>(map['fleetobservabilities']!, (value) => GetFeatureSpecFleetobservability.fromMap((value as Map).cast<String, dynamic>()))),
      multiclusteringresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecMulticlusteringress>(map['multiclusteringresses']!, (value) => GetFeatureSpecMulticlusteringress.fromMap((value as Map).cast<String, dynamic>()))),
      rbacrolebindingactuations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecRbacrolebindingactuation>(map['rbacrolebindingactuations']!, (value) => GetFeatureSpecRbacrolebindingactuation.fromMap((value as Map).cast<String, dynamic>()))),
      workloadidentities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecWorkloadidentity>(map['workloadidentities']!, (value) => GetFeatureSpecWorkloadidentity.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
