// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_observability_feature_spec.dart';
import 'cloud_audit_logging_feature_spec.dart';
import 'cluster_upgrade_fleet_spec_gkehub_v1alpha.dart';
import 'feature_spec.dart';
import 'fleet_observability_feature_spec_gkehub_v1alpha.dart';
import 'multi_cluster_ingress_feature_spec_gkehub_v1alpha.dart';
import 'namespace_actuation_feature_spec.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecGkehubV1alpha {
  /// Anthos Observability spec
  final pulumi.Input<AnthosObservabilityFeatureSpec>? anthosobservability;
  /// Appdevexperience specific spec.
  final pulumi.Input<Map<String, dynamic>>? appdevexperience;
  /// Cloud Audit Logging-specific spec.
  final pulumi.Input<CloudAuditLoggingFeatureSpec>? cloudauditlogging;
  /// ClusterUpgrade (fleet-based) feature spec.
  final pulumi.Input<ClusterUpgradeFleetSpecGkehubV1alpha>? clusterupgrade;
  /// FleetObservability feature spec.
  final pulumi.Input<FleetObservabilityFeatureSpecGkehubV1alpha>? fleetobservability;
  /// Multicluster Ingress-specific spec.
  final pulumi.Input<MultiClusterIngressFeatureSpecGkehubV1alpha>? multiclusteringress;
  /// Namespace Actuation feature spec
  final pulumi.Input<NamespaceActuationFeatureSpec>? namespaceactuation;
  /// Workload Certificate spec.
  final pulumi.Input<FeatureSpec>? workloadcertificate;

  /// Creates a new [CommonFeatureSpecGkehubV1alpha].
  /// [anthosobservability] Anthos Observability spec
  /// [appdevexperience] Appdevexperience specific spec.
  /// [cloudauditlogging] Cloud Audit Logging-specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  /// [namespaceactuation] Namespace Actuation feature spec
  /// [workloadcertificate] Workload Certificate spec.
  CommonFeatureSpecGkehubV1alpha({
    this.anthosobservability,
    this.appdevexperience,
    this.cloudauditlogging,
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
    this.namespaceactuation,
    this.workloadcertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosobservability': ?pulumi.Input.mapOptionalInputValue<AnthosObservabilityFeatureSpec, Map<String, dynamic>>(anthosobservability, (value) => value.toMap()),
      'appdevexperience': ?appdevexperience,
      'cloudauditlogging': ?pulumi.Input.mapOptionalInputValue<CloudAuditLoggingFeatureSpec, Map<String, dynamic>>(cloudauditlogging, (value) => value.toMap()),
      'clusterupgrade': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradeFleetSpecGkehubV1alpha, Map<String, dynamic>>(clusterupgrade, (value) => value.toMap()),
      'fleetobservability': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityFeatureSpecGkehubV1alpha, Map<String, dynamic>>(fleetobservability, (value) => value.toMap()),
      'multiclusteringress': ?pulumi.Input.mapOptionalInputValue<MultiClusterIngressFeatureSpecGkehubV1alpha, Map<String, dynamic>>(multiclusteringress, (value) => value.toMap()),
      'namespaceactuation': ?pulumi.Input.mapOptionalInputValue<NamespaceActuationFeatureSpec, Map<String, dynamic>>(namespaceactuation, (value) => value.toMap()),
      'workloadcertificate': ?pulumi.Input.mapOptionalInputValue<FeatureSpec, Map<String, dynamic>>(workloadcertificate, (value) => value.toMap()),
    };
  }

  factory CommonFeatureSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecGkehubV1alpha(
      anthosobservability: map['anthosobservability'] == null ? null : (AnthosObservabilityFeatureSpec.fromMap((map['anthosobservability']! as Map).cast<String, dynamic>())).input(),
      appdevexperience: map['appdevexperience'] == null ? null : ((map['appdevexperience']! as Map).cast<String, dynamic>()).input(),
      cloudauditlogging: map['cloudauditlogging'] == null ? null : (CloudAuditLoggingFeatureSpec.fromMap((map['cloudauditlogging']! as Map).cast<String, dynamic>())).input(),
      clusterupgrade: map['clusterupgrade'] == null ? null : (ClusterUpgradeFleetSpecGkehubV1alpha.fromMap((map['clusterupgrade']! as Map).cast<String, dynamic>())).input(),
      fleetobservability: map['fleetobservability'] == null ? null : (FleetObservabilityFeatureSpecGkehubV1alpha.fromMap((map['fleetobservability']! as Map).cast<String, dynamic>())).input(),
      multiclusteringress: map['multiclusteringress'] == null ? null : (MultiClusterIngressFeatureSpecGkehubV1alpha.fromMap((map['multiclusteringress']! as Map).cast<String, dynamic>())).input(),
      namespaceactuation: map['namespaceactuation'] == null ? null : (NamespaceActuationFeatureSpec.fromMap((map['namespaceactuation']! as Map).cast<String, dynamic>())).input(),
      workloadcertificate: map['workloadcertificate'] == null ? null : (FeatureSpec.fromMap((map['workloadcertificate']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

