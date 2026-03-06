// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_action.dart';
import 'google_privacy_dlp_v2_inspect_config.dart';
import 'google_privacy_dlp_v2_storage_config.dart';

/// Controls what and how to inspect for findings.
class GooglePrivacyDlpV2InspectJobConfig {
  /// Actions to execute at the completion of the job.
  final pulumi.Input<List<GooglePrivacyDlpV2Action>>? actions;
  /// How and what to scan for.
  final pulumi.Input<GooglePrivacyDlpV2InspectConfig>? inspectConfig;
  /// If provided, will be used as the default for all values in InspectConfig. `inspect_config` will be merged into the values persisted as part of the template.
  final pulumi.Input<String>? inspectTemplateName;
  /// The data to scan.
  final pulumi.Input<GooglePrivacyDlpV2StorageConfig>? storageConfig;

  /// Creates a new [GooglePrivacyDlpV2InspectJobConfig].
  /// [actions] Actions to execute at the completion of the job.
  /// [inspectConfig] How and what to scan for.
  /// [inspectTemplateName] If provided, will be used as the default for all values in InspectConfig. `inspect_config` will be merged into the values persisted as part of the template.
  /// [storageConfig] The data to scan.
  const GooglePrivacyDlpV2InspectJobConfig({
    this.actions,
    this.inspectConfig,
    this.inspectTemplateName,
    this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2Action>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2Action, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inspectConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InspectConfig, Map<String, dynamic>>(inspectConfig, (value) => value.toMap()),
      'inspectTemplateName': ?inspectTemplateName,
      'storageConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2StorageConfig, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2InspectJobConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectJobConfig(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2Action>(guardedValue, (value) => GooglePrivacyDlpV2Action.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inspectConfig: (() { final guardedValue = map['inspectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2InspectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inspectTemplateName: (() { final guardedValue = map['inspectTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageConfig: (() { final guardedValue = map['storageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2StorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

