// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_configmanagement_config_sync_deployment_override.dart';
import 'feature_membership_configmanagement_config_sync_git.dart';
import 'feature_membership_configmanagement_config_sync_oci.dart';

class FeatureMembershipConfigmanagementConfigSync {
  /// The override configurations for the Config Sync Deployments. Structure is documented below. The field is only available on Config Sync version 1.20.1 or later.
  final pulumi.Input<List<FeatureMembershipConfigmanagementConfigSyncDeploymentOverride>>? deploymentOverrides;
  /// Whether Config Sync is enabled in the cluster. This field was introduced in Terraform version
  /// 5.41.0, and
  /// needs to be set to `true` explicitly to install Config Sync.
  final pulumi.Input<bool>? enabled;
  /// (Optional) Structure is documented below.
  final pulumi.Input<FeatureMembershipConfigmanagementConfigSyncGit>? git;
  /// Deprecated: If Workload Identity Federation for GKE is enabled, Google Cloud Service Account is no longer needed for exporting Config Sync metrics: https://cloud.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/monitor-config-sync-cloud-monitoring#custom-monitoring.
  final pulumi.Input<String>? metricsGcpServiceAccountEmail;
  /// (Optional) Supported from Config Sync versions 1.12.0 onwards. Structure is documented below.
  ///
  /// Use either `git` or `oci` config option.
  final pulumi.Input<FeatureMembershipConfigmanagementConfigSyncOci>? oci;
  /// Supported from Config Sync versions 1.10.0 onwards. Set to `true` to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  final pulumi.Input<bool>? preventDrift;
  /// Specifies whether the Config Sync Repo is in "hierarchical" or "unstructured" mode.
  final pulumi.Input<String>? sourceFormat;
  /// Set to true to stop syncing configs for a single cluster. Default to false.
  final pulumi.Input<bool>? stopSyncing;

  /// Creates a new [FeatureMembershipConfigmanagementConfigSync].
  /// [deploymentOverrides] The override configurations for the Config Sync Deployments. Structure is documented below. The field is only available on Config Sync version 1.20.1 or later.
  /// [enabled] Whether Config Sync is enabled in the cluster. This field was introduced in Terraform version
  /// [git] (Optional) Structure is documented below.
  /// [metricsGcpServiceAccountEmail] Deprecated: If Workload Identity Federation for GKE is enabled, Google Cloud Service Account is no longer needed for exporting Config Sync metrics: https://cloud.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/monitor-config-sync-cloud-monitoring#custom-monitoring.
  /// [oci] (Optional) Supported from Config Sync versions 1.12.0 onwards. Structure is documented below.
  /// [preventDrift] Supported from Config Sync versions 1.10.0 onwards. Set to `true` to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  /// [sourceFormat] Specifies whether the Config Sync Repo is in "hierarchical" or "unstructured" mode.
  /// [stopSyncing] Set to true to stop syncing configs for a single cluster. Default to false.
  const FeatureMembershipConfigmanagementConfigSync({
    this.deploymentOverrides,
    this.enabled,
    this.git,
    this.metricsGcpServiceAccountEmail,
    this.oci,
    this.preventDrift,
    this.sourceFormat,
    this.stopSyncing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentOverrides': ?pulumi.Input.mapOptionalInputValue<List<FeatureMembershipConfigmanagementConfigSyncDeploymentOverride>, List<Map<String, dynamic>>>(deploymentOverrides, (value) => pulumi.Input.encodeList<FeatureMembershipConfigmanagementConfigSyncDeploymentOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'git': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipConfigmanagementConfigSyncGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'metricsGcpServiceAccountEmail': ?metricsGcpServiceAccountEmail,
      'oci': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipConfigmanagementConfigSyncOci, Map<String, dynamic>>(oci, (value) => value.toMap()),
      'preventDrift': ?preventDrift,
      'sourceFormat': ?sourceFormat,
      'stopSyncing': ?stopSyncing,
    };
  }

  factory FeatureMembershipConfigmanagementConfigSync.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagementConfigSync(
      deploymentOverrides: (() { final guardedValue = map['deploymentOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureMembershipConfigmanagementConfigSyncDeploymentOverride>(guardedValue, (value) => FeatureMembershipConfigmanagementConfigSyncDeploymentOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipConfigmanagementConfigSyncGit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricsGcpServiceAccountEmail: (() { final guardedValue = map['metricsGcpServiceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oci: (() { final guardedValue = map['oci']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipConfigmanagementConfigSyncOci.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preventDrift: (() { final guardedValue = map['preventDrift']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceFormat: (() { final guardedValue = map['sourceFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stopSyncing: (() { final guardedValue = map['stopSyncing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
