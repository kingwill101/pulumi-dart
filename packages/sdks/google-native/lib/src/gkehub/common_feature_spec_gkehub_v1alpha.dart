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
  final pulumi.Input<FleetObservabilityFeatureSpecGkehubV1alpha>?
  fleetobservability;

  /// Multicluster Ingress-specific spec.
  final pulumi.Input<MultiClusterIngressFeatureSpecGkehubV1alpha>?
  multiclusteringress;

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
      'anthosobservability':
          ?pulumi.Input.mapOptionalInputValue<
            AnthosObservabilityFeatureSpec,
            Map<String, dynamic>
          >(anthosobservability, (value) => value.toMap()),
      'appdevexperience': ?appdevexperience,
      'cloudauditlogging':
          ?pulumi.Input.mapOptionalInputValue<
            CloudAuditLoggingFeatureSpec,
            Map<String, dynamic>
          >(cloudauditlogging, (value) => value.toMap()),
      'clusterupgrade':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterUpgradeFleetSpecGkehubV1alpha,
            Map<String, dynamic>
          >(clusterupgrade, (value) => value.toMap()),
      'fleetobservability':
          ?pulumi.Input.mapOptionalInputValue<
            FleetObservabilityFeatureSpecGkehubV1alpha,
            Map<String, dynamic>
          >(fleetobservability, (value) => value.toMap()),
      'multiclusteringress':
          ?pulumi.Input.mapOptionalInputValue<
            MultiClusterIngressFeatureSpecGkehubV1alpha,
            Map<String, dynamic>
          >(multiclusteringress, (value) => value.toMap()),
      'namespaceactuation':
          ?pulumi.Input.mapOptionalInputValue<
            NamespaceActuationFeatureSpec,
            Map<String, dynamic>
          >(namespaceactuation, (value) => value.toMap()),
      'workloadcertificate':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureSpec,
            Map<String, dynamic>
          >(workloadcertificate, (value) => value.toMap()),
    };
  }

  factory CommonFeatureSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecGkehubV1alpha(
      anthosobservability: (() {
        final guardedValue = map['anthosobservability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AnthosObservabilityFeatureSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      appdevexperience: (() {
        final guardedValue = map['appdevexperience'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      cloudauditlogging: (() {
        final guardedValue = map['cloudauditlogging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudAuditLoggingFeatureSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterupgrade: (() {
        final guardedValue = map['clusterupgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterUpgradeFleetSpecGkehubV1alpha.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fleetobservability: (() {
        final guardedValue = map['fleetobservability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetObservabilityFeatureSpecGkehubV1alpha.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      multiclusteringress: (() {
        final guardedValue = map['multiclusteringress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MultiClusterIngressFeatureSpecGkehubV1alpha.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      namespaceactuation: (() {
        final guardedValue = map['namespaceactuation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NamespaceActuationFeatureSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      workloadcertificate: (() {
        final guardedValue = map['workloadcertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FeatureSpec.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
