// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_job_config_response.dart';
import 'google_privacy_dlp_v2_inspect_template_response.dart';

/// Snapshot of the inspection configuration.
class GooglePrivacyDlpV2RequestedOptionsResponse {
  /// Inspect config.
  final pulumi.Input<GooglePrivacyDlpV2InspectJobConfigResponse> jobConfig;
  /// If run with an InspectTemplate, a snapshot of its state at the time of this run.
  final pulumi.Input<GooglePrivacyDlpV2InspectTemplateResponse> snapshotInspectTemplate;

  /// Creates a new [GooglePrivacyDlpV2RequestedOptionsResponse].
  /// [jobConfig] Inspect config.
  /// [snapshotInspectTemplate] If run with an InspectTemplate, a snapshot of its state at the time of this run.
  GooglePrivacyDlpV2RequestedOptionsResponse({
    required this.jobConfig,
    required this.snapshotInspectTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InspectJobConfigResponse, Map<String, dynamic>>(jobConfig, (value) => value.toMap()),
      'snapshotInspectTemplate': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InspectTemplateResponse, Map<String, dynamic>>(snapshotInspectTemplate, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2RequestedOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RequestedOptionsResponse(
      jobConfig: (GooglePrivacyDlpV2InspectJobConfigResponse.fromMap((map['jobConfig'] as Map).cast<String, dynamic>())).input(),
      snapshotInspectTemplate: (GooglePrivacyDlpV2InspectTemplateResponse.fromMap((map['snapshotInspectTemplate'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

