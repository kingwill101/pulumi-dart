// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_stored_info_type_config_response.dart';
import 'google_privacy_dlp_v2_stored_info_type_stats_response.dart';

/// Version of a StoredInfoType, including the configuration used to build it, create timestamp, and current state.
class GooglePrivacyDlpV2StoredInfoTypeVersionResponse {
  /// StoredInfoType configuration.
  final pulumi.Input<GooglePrivacyDlpV2StoredInfoTypeConfigResponse> config;
  /// Create timestamp of the version. Read-only, determined by the system when the version is created.
  final pulumi.Input<String> createTime;
  /// Errors that occurred when creating this storedInfoType version, or anomalies detected in the storedInfoType data that render it unusable. Only the five most recent errors will be displayed, with the most recent error appearing first. For example, some of the data for stored custom dictionaries is put in the user's Cloud Storage bucket, and if this data is modified or deleted by the user or another system, the dictionary becomes invalid. If any errors occur, fix the problem indicated by the error message and use the UpdateStoredInfoType API method to create another version of the storedInfoType to continue using it, reusing the same `config` if it was not the source of the error.
  final pulumi.Input<List<GooglePrivacyDlpV2ErrorResponse>> errors;
  /// Stored info type version state. Read-only, updated by the system during dictionary creation.
  final pulumi.Input<String> state;
  /// Statistics about this storedInfoType version.
  final pulumi.Input<GooglePrivacyDlpV2StoredInfoTypeStatsResponse> stats;

  /// Creates a new [GooglePrivacyDlpV2StoredInfoTypeVersionResponse].
  /// [config] StoredInfoType configuration.
  /// [createTime] Create timestamp of the version. Read-only, determined by the system when the version is created.
  /// [errors] Errors that occurred when creating this storedInfoType version, or anomalies detected in the storedInfoType data that render it unusable. Only the five most recent errors will be displayed, with the most recent error appearing first. For example, some of the data for stored custom dictionaries is put in the user's Cloud Storage bucket, and if this data is modified or deleted by the user or another system, the dictionary becomes invalid. If any errors occur, fix the problem indicated by the error message and use the UpdateStoredInfoType API method to create another version of the storedInfoType to continue using it, reusing the same `config` if it was not the source of the error.
  /// [state] Stored info type version state. Read-only, updated by the system during dictionary creation.
  /// [stats] Statistics about this storedInfoType version.
  const GooglePrivacyDlpV2StoredInfoTypeVersionResponse({
    required this.config,
    required this.createTime,
    required this.errors,
    required this.state,
    required this.stats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GooglePrivacyDlpV2StoredInfoTypeConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': createTime,
      'errors': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2ErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2ErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'stats': pulumi.Input.mapInputValue<GooglePrivacyDlpV2StoredInfoTypeStatsResponse, Map<String, dynamic>>(stats, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2StoredInfoTypeVersionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredInfoTypeVersionResponse(
      config: pulumi.Input.fromValue(GooglePrivacyDlpV2StoredInfoTypeConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(map['errors']!, (value) => GooglePrivacyDlpV2ErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
      stats: pulumi.Input.fromValue(GooglePrivacyDlpV2StoredInfoTypeStatsResponse.fromMap((map['stats']! as Map).cast<String, dynamic>())),
    );
  }
}

