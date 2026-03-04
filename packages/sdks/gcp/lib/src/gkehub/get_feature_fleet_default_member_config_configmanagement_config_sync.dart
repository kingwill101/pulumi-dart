// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config_configmanagement_config_sync_git.dart';
import 'get_feature_fleet_default_member_config_configmanagement_config_sync_oci.dart';

class GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync {
  /// Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
  final pulumi.Input<bool> enabled;

  /// Git repo configuration for the cluster
  final pulumi.Input<
    List<GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit>
  >
  gits;

  /// The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring. The GSA should have the Monitoring Metric Writer(roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount 'default' in the namespace 'config-management-monitoring' should be bound to the GSA.
  final pulumi.Input<String> metricsGcpServiceAccountEmail;

  /// OCI repo configuration for the cluster
  final pulumi.Input<
    List<GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci>
  >
  ocis;

  /// Set to true to enable the Config Sync admission webhook to prevent drifts. If set to 'false', disables the Config Sync admission webhook and does not prevent drifts.
  final pulumi.Input<bool> preventDrift;

  /// Specifies whether the Config Sync Repo is in hierarchical or unstructured mode
  final pulumi.Input<String> sourceFormat;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync].
  /// [enabled] Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
  /// [gits] Git repo configuration for the cluster
  /// [metricsGcpServiceAccountEmail] The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring. The GSA should have the Monitoring Metric Writer(roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount 'default' in the namespace 'config-management-monitoring' should be bound to the GSA.
  /// [ocis] OCI repo configuration for the cluster
  /// [preventDrift] Set to true to enable the Config Sync admission webhook to prevent drifts. If set to 'false', disables the Config Sync admission webhook and does not prevent drifts.
  /// [sourceFormat] Specifies whether the Config Sync Repo is in hierarchical or unstructured mode
  GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync({
    required this.enabled,
    required this.gits,
    required this.metricsGcpServiceAccountEmail,
    required this.ocis,
    required this.preventDrift,
    required this.sourceFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'gits':
          pulumi.Input.mapInputValue<
            List<
              GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit
            >,
            List<Map<String, dynamic>>
          >(
            gits,
            (value) =>
                pulumi.Input.encodeList<
                  GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metricsGcpServiceAccountEmail': metricsGcpServiceAccountEmail,
      'ocis':
          pulumi.Input.mapInputValue<
            List<
              GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci
            >,
            List<Map<String, dynamic>>
          >(
            ocis,
            (value) =>
                pulumi.Input.encodeList<
                  GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'preventDrift': preventDrift,
      'sourceFormat': sourceFormat,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      gits: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit
        >(
          map['gits']!,
          (value) =>
              GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      metricsGcpServiceAccountEmail: pulumi.Input.fromValue(
        map['metricsGcpServiceAccountEmail'] as String,
      ),
      ocis: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci
        >(
          map['ocis']!,
          (value) =>
              GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      preventDrift: pulumi.Input.fromValue(map['preventDrift'] as bool),
      sourceFormat: pulumi.Input.fromValue(map['sourceFormat'] as String),
    );
  }
}
