// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_categorical_stats_result_response.dart';
import 'google_privacy_dlp_v2_delta_presence_estimation_result_response.dart';
import 'google_privacy_dlp_v2_kanonymity_result_response.dart';
import 'google_privacy_dlp_v2_kmap_estimation_result_response.dart';
import 'google_privacy_dlp_v2_ldiversity_result_response.dart';
import 'google_privacy_dlp_v2_numerical_stats_result_response.dart';
import 'google_privacy_dlp_v2_privacy_metric_response.dart';
import 'google_privacy_dlp_v2_requested_risk_analysis_options_response.dart';

/// Result of a risk analysis operation request.
class GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse {
  /// Categorical stats result
  final pulumi.Input<GooglePrivacyDlpV2CategoricalStatsResultResponse> categoricalStatsResult;
  /// Delta-presence result
  final pulumi.Input<GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse> deltaPresenceEstimationResult;
  /// K-anonymity result
  final pulumi.Input<GooglePrivacyDlpV2KAnonymityResultResponse> kAnonymityResult;
  /// K-map result
  final pulumi.Input<GooglePrivacyDlpV2KMapEstimationResultResponse> kMapEstimationResult;
  /// L-divesity result
  final pulumi.Input<GooglePrivacyDlpV2LDiversityResultResponse> lDiversityResult;
  /// Numerical stats result
  final pulumi.Input<GooglePrivacyDlpV2NumericalStatsResultResponse> numericalStatsResult;
  /// The configuration used for this job.
  final pulumi.Input<GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse> requestedOptions;
  /// Privacy metric to compute.
  final pulumi.Input<GooglePrivacyDlpV2PrivacyMetricResponse> requestedPrivacyMetric;
  /// Input dataset to compute metrics over.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTableResponse> requestedSourceTable;

  /// Creates a new [GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse].
  /// [categoricalStatsResult] Categorical stats result
  /// [deltaPresenceEstimationResult] Delta-presence result
  /// [kAnonymityResult] K-anonymity result
  /// [kMapEstimationResult] K-map result
  /// [lDiversityResult] L-divesity result
  /// [numericalStatsResult] Numerical stats result
  /// [requestedOptions] The configuration used for this job.
  /// [requestedPrivacyMetric] Privacy metric to compute.
  /// [requestedSourceTable] Input dataset to compute metrics over.
  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse({
    required this.categoricalStatsResult,
    required this.deltaPresenceEstimationResult,
    required this.kAnonymityResult,
    required this.kMapEstimationResult,
    required this.lDiversityResult,
    required this.numericalStatsResult,
    required this.requestedOptions,
    required this.requestedPrivacyMetric,
    required this.requestedSourceTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalStatsResult': pulumi.Input.mapInputValue<GooglePrivacyDlpV2CategoricalStatsResultResponse, Map<String, dynamic>>(categoricalStatsResult, (value) => value.toMap()),
      'deltaPresenceEstimationResult': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse, Map<String, dynamic>>(deltaPresenceEstimationResult, (value) => value.toMap()),
      'kAnonymityResult': pulumi.Input.mapInputValue<GooglePrivacyDlpV2KAnonymityResultResponse, Map<String, dynamic>>(kAnonymityResult, (value) => value.toMap()),
      'kMapEstimationResult': pulumi.Input.mapInputValue<GooglePrivacyDlpV2KMapEstimationResultResponse, Map<String, dynamic>>(kMapEstimationResult, (value) => value.toMap()),
      'lDiversityResult': pulumi.Input.mapInputValue<GooglePrivacyDlpV2LDiversityResultResponse, Map<String, dynamic>>(lDiversityResult, (value) => value.toMap()),
      'numericalStatsResult': pulumi.Input.mapInputValue<GooglePrivacyDlpV2NumericalStatsResultResponse, Map<String, dynamic>>(numericalStatsResult, (value) => value.toMap()),
      'requestedOptions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse, Map<String, dynamic>>(requestedOptions, (value) => value.toMap()),
      'requestedPrivacyMetric': pulumi.Input.mapInputValue<GooglePrivacyDlpV2PrivacyMetricResponse, Map<String, dynamic>>(requestedPrivacyMetric, (value) => value.toMap()),
      'requestedSourceTable': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryTableResponse, Map<String, dynamic>>(requestedSourceTable, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse(
      categoricalStatsResult: pulumi.Input.fromValue(GooglePrivacyDlpV2CategoricalStatsResultResponse.fromMap((map['categoricalStatsResult']! as Map).cast<String, dynamic>())),
      deltaPresenceEstimationResult: pulumi.Input.fromValue(GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse.fromMap((map['deltaPresenceEstimationResult']! as Map).cast<String, dynamic>())),
      kAnonymityResult: pulumi.Input.fromValue(GooglePrivacyDlpV2KAnonymityResultResponse.fromMap((map['kAnonymityResult']! as Map).cast<String, dynamic>())),
      kMapEstimationResult: pulumi.Input.fromValue(GooglePrivacyDlpV2KMapEstimationResultResponse.fromMap((map['kMapEstimationResult']! as Map).cast<String, dynamic>())),
      lDiversityResult: pulumi.Input.fromValue(GooglePrivacyDlpV2LDiversityResultResponse.fromMap((map['lDiversityResult']! as Map).cast<String, dynamic>())),
      numericalStatsResult: pulumi.Input.fromValue(GooglePrivacyDlpV2NumericalStatsResultResponse.fromMap((map['numericalStatsResult']! as Map).cast<String, dynamic>())),
      requestedOptions: pulumi.Input.fromValue(GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse.fromMap((map['requestedOptions']! as Map).cast<String, dynamic>())),
      requestedPrivacyMetric: pulumi.Input.fromValue(GooglePrivacyDlpV2PrivacyMetricResponse.fromMap((map['requestedPrivacyMetric']! as Map).cast<String, dynamic>())),
      requestedSourceTable: pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryTableResponse.fromMap((map['requestedSourceTable']! as Map).cast<String, dynamic>())),
    );
  }
}

