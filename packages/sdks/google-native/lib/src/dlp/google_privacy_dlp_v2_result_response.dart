// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_hybrid_inspect_statistics_response.dart';
import 'google_privacy_dlp_v2_info_type_stats_response.dart';

/// All result fields mentioned below are updated while the job is processing.
class GooglePrivacyDlpV2ResultResponse {
  /// Statistics related to the processing of hybrid inspect.
  final pulumi.Input<GooglePrivacyDlpV2HybridInspectStatisticsResponse> hybridStats;
  /// Statistics of how many instances of each info type were found during inspect job.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoTypeStatsResponse>> infoTypeStats;
  /// Total size in bytes that were processed.
  final pulumi.Input<String> processedBytes;
  /// Estimate of the number of bytes to process.
  final pulumi.Input<String> totalEstimatedBytes;

  /// Creates a new [GooglePrivacyDlpV2ResultResponse].
  /// [hybridStats] Statistics related to the processing of hybrid inspect.
  /// [infoTypeStats] Statistics of how many instances of each info type were found during inspect job.
  /// [processedBytes] Total size in bytes that were processed.
  /// [totalEstimatedBytes] Estimate of the number of bytes to process.
  const GooglePrivacyDlpV2ResultResponse({
    required this.hybridStats,
    required this.infoTypeStats,
    required this.processedBytes,
    required this.totalEstimatedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridStats': pulumi.Input.mapInputValue<GooglePrivacyDlpV2HybridInspectStatisticsResponse, Map<String, dynamic>>(hybridStats, (value) => value.toMap()),
      'infoTypeStats': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2InfoTypeStatsResponse>, List<Map<String, dynamic>>>(infoTypeStats, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoTypeStatsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processedBytes': processedBytes,
      'totalEstimatedBytes': totalEstimatedBytes,
    };
  }

  factory GooglePrivacyDlpV2ResultResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ResultResponse(
      hybridStats: pulumi.Input.fromValue(GooglePrivacyDlpV2HybridInspectStatisticsResponse.fromMap((map['hybridStats']! as Map).cast<String, dynamic>())),
      infoTypeStats: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeStatsResponse>(map['infoTypeStats']!, (value) => GooglePrivacyDlpV2InfoTypeStatsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      processedBytes: pulumi.Input.fromValue(map['processedBytes'] as String),
      totalEstimatedBytes: pulumi.Input.fromValue(map['totalEstimatedBytes'] as String),
    );
  }
}
