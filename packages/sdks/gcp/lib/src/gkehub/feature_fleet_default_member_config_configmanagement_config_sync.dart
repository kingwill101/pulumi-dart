// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_configmanagement_config_sync_git.dart';
import 'feature_fleet_default_member_config_configmanagement_config_sync_oci.dart';

class FeatureFleetDefaultMemberConfigConfigmanagementConfigSync {
  /// Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
  final pulumi.Input<bool>? enabled;
  /// Git repo configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit>? git;
  /// The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring. The GSA should have the Monitoring Metric Writer(roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the namespace `config-management-monitoring` should be bound to the GSA.
  final pulumi.Input<String>? metricsGcpServiceAccountEmail;
  /// OCI repo configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci>? oci;
  /// Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  final pulumi.Input<bool>? preventDrift;
  /// Specifies whether the Config Sync Repo is in hierarchical or unstructured mode
  final pulumi.Input<String>? sourceFormat;

  /// Creates a new [FeatureFleetDefaultMemberConfigConfigmanagementConfigSync].
  /// [enabled] Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
  /// [git] Git repo configuration for the cluster
  /// [metricsGcpServiceAccountEmail] The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring. The GSA should have the Monitoring Metric Writer(roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the namespace `config-management-monitoring` should be bound to the GSA.
  /// [oci] OCI repo configuration for the cluster
  /// [preventDrift] Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  /// [sourceFormat] Specifies whether the Config Sync Repo is in hierarchical or unstructured mode
  FeatureFleetDefaultMemberConfigConfigmanagementConfigSync({
    this.enabled,
    this.git,
    this.metricsGcpServiceAccountEmail,
    this.oci,
    this.preventDrift,
    this.sourceFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'git': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'metricsGcpServiceAccountEmail': ?metricsGcpServiceAccountEmail,
      'oci': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci, Map<String, dynamic>>(oci, (value) => value.toMap()),
      'preventDrift': ?preventDrift,
      'sourceFormat': ?sourceFormat,
    };
  }

  factory FeatureFleetDefaultMemberConfigConfigmanagementConfigSync.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigConfigmanagementConfigSync(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      git: map['git'] == null ? null : (FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit.fromMap((map['git']! as Map).cast<String, dynamic>())).input(),
      metricsGcpServiceAccountEmail: map['metricsGcpServiceAccountEmail'] == null ? null : (map['metricsGcpServiceAccountEmail']! as String).input(),
      oci: map['oci'] == null ? null : (FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci.fromMap((map['oci']! as Map).cast<String, dynamic>())).input(),
      preventDrift: map['preventDrift'] == null ? null : (map['preventDrift']! as bool).input(),
      sourceFormat: map['sourceFormat'] == null ? null : (map['sourceFormat']! as String).input(),
    );
  }
}

