// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_configmanagement_config_sync.dart';
import 'feature_membership_configmanagement_hierarchy_controller.dart';
import 'feature_membership_configmanagement_policy_controller.dart';

class FeatureMembershipConfigmanagement {
  /// Config Sync configuration for the cluster. Structure is documented below.
  final pulumi.Input<FeatureMembershipConfigmanagementConfigSync>? configSync;
  /// Hierarchy Controller configuration for the cluster. Structure is documented below.
  /// Configuring Hierarchy Controller through the configmanagement feature is no longer recommended.
  /// Use open source Kubernetes [Hierarchical Namespace Controller (HNC)](https://github.com/kubernetes-sigs/hierarchical-namespaces) instead.
  /// Follow the [instructions](https://cloud.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/migrate-hierarchy-controller)
  /// to migrate from Hierarchy Controller to HNC.
  final pulumi.Input<FeatureMembershipConfigmanagementHierarchyController>? hierarchyController;
  /// Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades.
  final pulumi.Input<String>? management;
  /// Policy Controller configuration for the cluster. Structure is documented below.
  /// Configuring Policy Controller through the configmanagement feature is no longer recommended.
  /// Use the policycontroller feature instead.
  final pulumi.Input<FeatureMembershipConfigmanagementPolicyController>? policyController;
  /// Version of Config Sync installed.
  final pulumi.Input<String>? version;

  /// Creates a new [FeatureMembershipConfigmanagement].
  /// [configSync] Config Sync configuration for the cluster. Structure is documented below.
  /// [hierarchyController] Hierarchy Controller configuration for the cluster. Structure is documented below.
  /// [management] Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades.
  /// [policyController] Policy Controller configuration for the cluster. Structure is documented below.
  /// [version] Version of Config Sync installed.
  const FeatureMembershipConfigmanagement({
    this.configSync,
    this.hierarchyController,
    this.management,
    this.policyController,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSync': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipConfigmanagementConfigSync, Map<String, dynamic>>(configSync, (value) => value.toMap()),
      'hierarchyController': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipConfigmanagementHierarchyController, Map<String, dynamic>>(hierarchyController, (value) => value.toMap()),
      'management': ?management,
      'policyController': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipConfigmanagementPolicyController, Map<String, dynamic>>(policyController, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory FeatureMembershipConfigmanagement.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagement(
      configSync: (() { final guardedValue = map['configSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipConfigmanagementConfigSync.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hierarchyController: (() { final guardedValue = map['hierarchyController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipConfigmanagementHierarchyController.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyController: (() { final guardedValue = map['policyController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipConfigmanagementPolicyController.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

