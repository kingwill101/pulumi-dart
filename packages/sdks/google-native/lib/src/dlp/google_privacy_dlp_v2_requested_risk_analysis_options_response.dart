// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_risk_analysis_job_config_response.dart';

/// Risk analysis options.
class GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse {
  /// The job config for the risk job.
  final pulumi.Input<GooglePrivacyDlpV2RiskAnalysisJobConfigResponse> jobConfig;

  /// Creates a new [GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse].
  /// [jobConfig] The job config for the risk job.
  const GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse({
    required this.jobConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2RiskAnalysisJobConfigResponse, Map<String, dynamic>>(jobConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse(
      jobConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2RiskAnalysisJobConfigResponse.fromMap((map['jobConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

