// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_action_response.dart';
import 'google_privacy_dlp_v2_inspect_config_response.dart';
import 'google_privacy_dlp_v2_storage_config_response.dart';

/// Controls what and how to inspect for findings.
class GooglePrivacyDlpV2InspectJobConfigResponse {
  /// Actions to execute at the completion of the job.
  final pulumi.Input<List<GooglePrivacyDlpV2ActionResponse>> actions;
  /// How and what to scan for.
  final pulumi.Input<GooglePrivacyDlpV2InspectConfigResponse> inspectConfig;
  /// If provided, will be used as the default for all values in InspectConfig. `inspect_config` will be merged into the values persisted as part of the template.
  final pulumi.Input<String> inspectTemplateName;
  /// The data to scan.
  final pulumi.Input<GooglePrivacyDlpV2StorageConfigResponse> storageConfig;

  /// Creates a new [GooglePrivacyDlpV2InspectJobConfigResponse].
  /// [actions] Actions to execute at the completion of the job.
  /// [inspectConfig] How and what to scan for.
  /// [inspectTemplateName] If provided, will be used as the default for all values in InspectConfig. `inspect_config` will be merged into the values persisted as part of the template.
  /// [storageConfig] The data to scan.
  const GooglePrivacyDlpV2InspectJobConfigResponse({
    required this.actions,
    required this.inspectConfig,
    required this.inspectTemplateName,
    required this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2ActionResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2ActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inspectConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InspectConfigResponse, Map<String, dynamic>>(inspectConfig, (value) => value.toMap()),
      'inspectTemplateName': inspectTemplateName,
      'storageConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2StorageConfigResponse, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2InspectJobConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectJobConfigResponse(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2ActionResponse>(map['actions']!, (value) => GooglePrivacyDlpV2ActionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      inspectConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2InspectConfigResponse.fromMap((map['inspectConfig']! as Map).cast<String, dynamic>())),
      inspectTemplateName: pulumi.Input.fromValue(map['inspectTemplateName'] as String),
      storageConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2StorageConfigResponse.fromMap((map['storageConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
