// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_observability_feature_spec_response.dart';
import 'cloud_audit_logging_feature_spec_response.dart';
import 'cluster_upgrade_fleet_spec_response_gkehub_v1alpha.dart';
import 'feature_spec_response.dart';
import 'fleet_observability_feature_spec_response_gkehub_v1alpha.dart';
import 'multi_cluster_ingress_feature_spec_response_gkehub_v1alpha.dart';
import 'namespace_actuation_feature_spec_response.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecResponseGkehubV1alpha {
  /// Anthos Observability spec
  final pulumi.Input<AnthosObservabilityFeatureSpecResponse> anthosobservability;
  /// Appdevexperience specific spec.
  final pulumi.Input<Map<String, dynamic>> appdevexperience;
  /// Cloud Audit Logging-specific spec.
  final pulumi.Input<CloudAuditLoggingFeatureSpecResponse> cloudauditlogging;
  /// ClusterUpgrade (fleet-based) feature spec.
  final pulumi.Input<ClusterUpgradeFleetSpecResponseGkehubV1alpha> clusterupgrade;
  /// FleetObservability feature spec.
  final pulumi.Input<FleetObservabilityFeatureSpecResponseGkehubV1alpha> fleetobservability;
  /// Multicluster Ingress-specific spec.
  final pulumi.Input<MultiClusterIngressFeatureSpecResponseGkehubV1alpha> multiclusteringress;
  /// Namespace Actuation feature spec
  final pulumi.Input<NamespaceActuationFeatureSpecResponse> namespaceactuation;
  /// Workload Certificate spec.
  final pulumi.Input<FeatureSpecResponse> workloadcertificate;

  /// Creates a new [CommonFeatureSpecResponseGkehubV1alpha].
  /// [anthosobservability] Anthos Observability spec
  /// [appdevexperience] Appdevexperience specific spec.
  /// [cloudauditlogging] Cloud Audit Logging-specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  /// [namespaceactuation] Namespace Actuation feature spec
  /// [workloadcertificate] Workload Certificate spec.
  const CommonFeatureSpecResponseGkehubV1alpha({
    required this.anthosobservability,
    required this.appdevexperience,
    required this.cloudauditlogging,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.multiclusteringress,
    required this.namespaceactuation,
    required this.workloadcertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosobservability': pulumi.Input.mapInputValue<AnthosObservabilityFeatureSpecResponse, Map<String, dynamic>>(anthosobservability, (value) => value.toMap()),
      'appdevexperience': appdevexperience,
      'cloudauditlogging': pulumi.Input.mapInputValue<CloudAuditLoggingFeatureSpecResponse, Map<String, dynamic>>(cloudauditlogging, (value) => value.toMap()),
      'clusterupgrade': pulumi.Input.mapInputValue<ClusterUpgradeFleetSpecResponseGkehubV1alpha, Map<String, dynamic>>(clusterupgrade, (value) => value.toMap()),
      'fleetobservability': pulumi.Input.mapInputValue<FleetObservabilityFeatureSpecResponseGkehubV1alpha, Map<String, dynamic>>(fleetobservability, (value) => value.toMap()),
      'multiclusteringress': pulumi.Input.mapInputValue<MultiClusterIngressFeatureSpecResponseGkehubV1alpha, Map<String, dynamic>>(multiclusteringress, (value) => value.toMap()),
      'namespaceactuation': pulumi.Input.mapInputValue<NamespaceActuationFeatureSpecResponse, Map<String, dynamic>>(namespaceactuation, (value) => value.toMap()),
      'workloadcertificate': pulumi.Input.mapInputValue<FeatureSpecResponse, Map<String, dynamic>>(workloadcertificate, (value) => value.toMap()),
    };
  }

  factory CommonFeatureSpecResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecResponseGkehubV1alpha(
      anthosobservability: pulumi.Input.fromValue(AnthosObservabilityFeatureSpecResponse.fromMap((map['anthosobservability']! as Map).cast<String, dynamic>())),
      appdevexperience: pulumi.Input.fromValue((map['appdevexperience']! as Map).cast<String, dynamic>()),
      cloudauditlogging: pulumi.Input.fromValue(CloudAuditLoggingFeatureSpecResponse.fromMap((map['cloudauditlogging']! as Map).cast<String, dynamic>())),
      clusterupgrade: pulumi.Input.fromValue(ClusterUpgradeFleetSpecResponseGkehubV1alpha.fromMap((map['clusterupgrade']! as Map).cast<String, dynamic>())),
      fleetobservability: pulumi.Input.fromValue(FleetObservabilityFeatureSpecResponseGkehubV1alpha.fromMap((map['fleetobservability']! as Map).cast<String, dynamic>())),
      multiclusteringress: pulumi.Input.fromValue(MultiClusterIngressFeatureSpecResponseGkehubV1alpha.fromMap((map['multiclusteringress']! as Map).cast<String, dynamic>())),
      namespaceactuation: pulumi.Input.fromValue(NamespaceActuationFeatureSpecResponse.fromMap((map['namespaceactuation']! as Map).cast<String, dynamic>())),
      workloadcertificate: pulumi.Input.fromValue(FeatureSpecResponse.fromMap((map['workloadcertificate']! as Map).cast<String, dynamic>())),
    );
  }
}

