// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_data_profile_action_response.dart';
import 'google_privacy_dlp_v2_discovery_target_response.dart';
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_org_config_response.dart';

/// Result data returned by getDiscoveryConfig.
class GetDiscoveryConfigResult {
  /// Actions to execute at the completion of scanning.
  final List<GooglePrivacyDlpV2DataProfileActionResponse> actions;
  /// The creation timestamp of a DiscoveryConfig.
  final String createTime;
  /// Display name (max 100 chars)
  final String displayName;
  /// A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  final List<GooglePrivacyDlpV2ErrorResponse> errors;
  /// Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include_quote and exclude_info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including "global"). Each region is scanned using the applicable template. If no region-specific template is specified, but a "global" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/dlp/docs/data-profiles#data-residency.
  final List<String> inspectTemplates;
  /// The timestamp of the last time this config was executed.
  final String lastRunTime;
  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  final String name;
  /// Only set when the parent is an org.
  final GooglePrivacyDlpV2OrgConfigResponse orgConfig;
  /// A status for this configuration.
  final String status;
  /// Target to match against for determining what to scan and how frequently.
  final List<GooglePrivacyDlpV2DiscoveryTargetResponse> targets;
  /// The last update timestamp of a DiscoveryConfig.
  final String updateTime;

  /// Creates a new [GetDiscoveryConfigResult].
  /// [actions] Actions to execute at the completion of scanning.
  /// [createTime] The creation timestamp of a DiscoveryConfig.
  /// [displayName] Display name (max 100 chars)
  /// [errors] A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  /// [inspectTemplates] Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include_quote and exclude_info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including "global"). Each region is scanned using the applicable template. If no region-specific template is specified, but a "global" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/dlp/docs/data-profiles#data-residency.
  /// [lastRunTime] The timestamp of the last time this config was executed.
  /// [name] Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  /// [orgConfig] Only set when the parent is an org.
  /// [status] A status for this configuration.
  /// [targets] Target to match against for determining what to scan and how frequently.
  /// [updateTime] The last update timestamp of a DiscoveryConfig.
  const GetDiscoveryConfigResult({
    required this.actions,
    required this.createTime,
    required this.displayName,
    required this.errors,
    required this.inspectTemplates,
    required this.lastRunTime,
    required this.name,
    required this.orgConfig,
    required this.status,
    required this.targets,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<GooglePrivacyDlpV2DataProfileActionResponse, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'createTime': createTime,
      'displayName': displayName,
      'errors': pulumi.Input.encodeList<GooglePrivacyDlpV2ErrorResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'inspectTemplates': inspectTemplates,
      'lastRunTime': lastRunTime,
      'name': name,
      'orgConfig': orgConfig.toMap(),
      'status': status,
      'targets': pulumi.Input.encodeList<GooglePrivacyDlpV2DiscoveryTargetResponse, Map<String, dynamic>>(targets, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetDiscoveryConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDiscoveryConfigResult(
      actions: pulumi.Input.decodeList<GooglePrivacyDlpV2DataProfileActionResponse>(map['actions']!, (value) => GooglePrivacyDlpV2DataProfileActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      errors: pulumi.Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(map['errors']!, (value) => GooglePrivacyDlpV2ErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      inspectTemplates: (map['inspectTemplates'] as List).cast<String>(),
      lastRunTime: map['lastRunTime'] as String,
      name: map['name'] as String,
      orgConfig: GooglePrivacyDlpV2OrgConfigResponse.fromMap((map['orgConfig']! as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      targets: pulumi.Input.decodeList<GooglePrivacyDlpV2DiscoveryTargetResponse>(map['targets']!, (value) => GooglePrivacyDlpV2DiscoveryTargetResponse.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
