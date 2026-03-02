// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_configmanagement_config_sync_deployment_override.dart';
import 'feature_membership_configmanagement_config_sync_git.dart';
import 'feature_membership_configmanagement_config_sync_oci.dart';

class FeatureMembershipConfigmanagementConfigSync {
  /// The override configurations for the Config Sync Deployments. Structure is documented below. The field is only available on Config Sync version 1.20.1 or later.
  final pulumi.Input<List<FeatureMembershipConfigmanagementConfigSyncDeploymentOverride>>? deploymentOverrides;
  /// Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
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
  /// Set to `true` to stop syncing configurations for a single cluster. This field is only available on clusters using Config Sync [auto-upgrades](http://cloud/kubernetes-engine/enterprise/config-sync/docs/how-to/upgrade-config-sync#auto-upgrade-config) or on Config Sync version 1.20.0 or later. Defaults: `false`.
  final pulumi.Input<bool>? stopSyncing;

  /// Creates a new [FeatureMembershipConfigmanagementConfigSync].
  /// [deploymentOverrides] The override configurations for the Config Sync Deployments. Structure is documented below. The field is only available on Config Sync version 1.20.1 or later.
  /// [enabled] Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
  /// [git] (Optional) Structure is documented below.
  /// [metricsGcpServiceAccountEmail] Deprecated: If Workload Identity Federation for GKE is enabled, Google Cloud Service Account is no longer needed for exporting Config Sync metrics: https://cloud.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/monitor-config-sync-cloud-monitoring#custom-monitoring.
  /// [oci] (Optional) Supported from Config Sync versions 1.12.0 onwards. Structure is documented below.
  /// [preventDrift] Supported from Config Sync versions 1.10.0 onwards. Set to `true` to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  /// [sourceFormat] Specifies whether the Config Sync Repo is in "hierarchical" or "unstructured" mode.
  /// [stopSyncing] Set to `true` to stop syncing configurations for a single cluster. This field is only available on clusters using Config Sync [auto-upgrades](http://cloud/kubernetes-engine/enterprise/config-sync/docs/how-to/upgrade-config-sync#auto-upgrade-config) or on Config Sync version 1.20.0 or later. Defaults: `false`.
  FeatureMembershipConfigmanagementConfigSync({
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
      deploymentOverrides: map['deploymentOverrides'] == null ? null : (pulumi.Input.decodeList<FeatureMembershipConfigmanagementConfigSyncDeploymentOverride>(map['deploymentOverrides']!, (value) => FeatureMembershipConfigmanagementConfigSyncDeploymentOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      git: map['git'] == null ? null : (FeatureMembershipConfigmanagementConfigSyncGit.fromMap((map['git']! as Map).cast<String, dynamic>())).input(),
      metricsGcpServiceAccountEmail: map['metricsGcpServiceAccountEmail'] == null ? null : (map['metricsGcpServiceAccountEmail']! as String).input(),
      oci: map['oci'] == null ? null : (FeatureMembershipConfigmanagementConfigSyncOci.fromMap((map['oci']! as Map).cast<String, dynamic>())).input(),
      preventDrift: map['preventDrift'] == null ? null : (map['preventDrift']! as bool).input(),
      sourceFormat: map['sourceFormat'] == null ? null : (map['sourceFormat']! as String).input(),
      stopSyncing: map['stopSyncing'] == null ? null : (map['stopSyncing']! as bool).input(),
    );
  }
}

