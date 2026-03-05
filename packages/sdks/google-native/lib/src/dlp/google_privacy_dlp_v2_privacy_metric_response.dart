// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_categorical_stats_config_response.dart';
import 'google_privacy_dlp_v2_delta_presence_estimation_config_response.dart';
import 'google_privacy_dlp_v2_kanonymity_config_response.dart';
import 'google_privacy_dlp_v2_kmap_estimation_config_response.dart';
import 'google_privacy_dlp_v2_ldiversity_config_response.dart';
import 'google_privacy_dlp_v2_numerical_stats_config_response.dart';

/// Privacy metric to compute for reidentification risk analysis.
class GooglePrivacyDlpV2PrivacyMetricResponse {
  /// Categorical stats
  final pulumi.Input<GooglePrivacyDlpV2CategoricalStatsConfigResponse> categoricalStatsConfig;
  /// delta-presence
  final pulumi.Input<GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse> deltaPresenceEstimationConfig;
  /// K-anonymity
  final pulumi.Input<GooglePrivacyDlpV2KAnonymityConfigResponse> kAnonymityConfig;
  /// k-map
  final pulumi.Input<GooglePrivacyDlpV2KMapEstimationConfigResponse> kMapEstimationConfig;
  /// l-diversity
  final pulumi.Input<GooglePrivacyDlpV2LDiversityConfigResponse> lDiversityConfig;
  /// Numerical stats
  final pulumi.Input<GooglePrivacyDlpV2NumericalStatsConfigResponse> numericalStatsConfig;

  /// Creates a new [GooglePrivacyDlpV2PrivacyMetricResponse].
  /// [categoricalStatsConfig] Categorical stats
  /// [deltaPresenceEstimationConfig] delta-presence
  /// [kAnonymityConfig] K-anonymity
  /// [kMapEstimationConfig] k-map
  /// [lDiversityConfig] l-diversity
  /// [numericalStatsConfig] Numerical stats
  GooglePrivacyDlpV2PrivacyMetricResponse({
    required this.categoricalStatsConfig,
    required this.deltaPresenceEstimationConfig,
    required this.kAnonymityConfig,
    required this.kMapEstimationConfig,
    required this.lDiversityConfig,
    required this.numericalStatsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalStatsConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2CategoricalStatsConfigResponse, Map<String, dynamic>>(categoricalStatsConfig, (value) => value.toMap()),
      'deltaPresenceEstimationConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse, Map<String, dynamic>>(deltaPresenceEstimationConfig, (value) => value.toMap()),
      'kAnonymityConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2KAnonymityConfigResponse, Map<String, dynamic>>(kAnonymityConfig, (value) => value.toMap()),
      'kMapEstimationConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2KMapEstimationConfigResponse, Map<String, dynamic>>(kMapEstimationConfig, (value) => value.toMap()),
      'lDiversityConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2LDiversityConfigResponse, Map<String, dynamic>>(lDiversityConfig, (value) => value.toMap()),
      'numericalStatsConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2NumericalStatsConfigResponse, Map<String, dynamic>>(numericalStatsConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2PrivacyMetricResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PrivacyMetricResponse(
      categoricalStatsConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2CategoricalStatsConfigResponse.fromMap((map['categoricalStatsConfig']! as Map).cast<String, dynamic>())),
      deltaPresenceEstimationConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse.fromMap((map['deltaPresenceEstimationConfig']! as Map).cast<String, dynamic>())),
      kAnonymityConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2KAnonymityConfigResponse.fromMap((map['kAnonymityConfig']! as Map).cast<String, dynamic>())),
      kMapEstimationConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2KMapEstimationConfigResponse.fromMap((map['kMapEstimationConfig']! as Map).cast<String, dynamic>())),
      lDiversityConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2LDiversityConfigResponse.fromMap((map['lDiversityConfig']! as Map).cast<String, dynamic>())),
      numericalStatsConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2NumericalStatsConfigResponse.fromMap((map['numericalStatsConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

