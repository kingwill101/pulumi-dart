// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_categorical_stats_config.dart';
import 'google_privacy_dlp_v2_delta_presence_estimation_config.dart';
import 'google_privacy_dlp_v2_kanonymity_config.dart';
import 'google_privacy_dlp_v2_kmap_estimation_config.dart';
import 'google_privacy_dlp_v2_ldiversity_config.dart';
import 'google_privacy_dlp_v2_numerical_stats_config.dart';

/// Privacy metric to compute for reidentification risk analysis.
class GooglePrivacyDlpV2PrivacyMetric {
  /// Categorical stats
  final pulumi.Input<GooglePrivacyDlpV2CategoricalStatsConfig>? categoricalStatsConfig;
  /// delta-presence
  final pulumi.Input<GooglePrivacyDlpV2DeltaPresenceEstimationConfig>? deltaPresenceEstimationConfig;
  /// K-anonymity
  final pulumi.Input<GooglePrivacyDlpV2KAnonymityConfig>? kAnonymityConfig;
  /// k-map
  final pulumi.Input<GooglePrivacyDlpV2KMapEstimationConfig>? kMapEstimationConfig;
  /// l-diversity
  final pulumi.Input<GooglePrivacyDlpV2LDiversityConfig>? lDiversityConfig;
  /// Numerical stats
  final pulumi.Input<GooglePrivacyDlpV2NumericalStatsConfig>? numericalStatsConfig;

  /// Creates a new [GooglePrivacyDlpV2PrivacyMetric].
  /// [categoricalStatsConfig] Categorical stats
  /// [deltaPresenceEstimationConfig] delta-presence
  /// [kAnonymityConfig] K-anonymity
  /// [kMapEstimationConfig] k-map
  /// [lDiversityConfig] l-diversity
  /// [numericalStatsConfig] Numerical stats
  GooglePrivacyDlpV2PrivacyMetric({
    this.categoricalStatsConfig,
    this.deltaPresenceEstimationConfig,
    this.kAnonymityConfig,
    this.kMapEstimationConfig,
    this.lDiversityConfig,
    this.numericalStatsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalStatsConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CategoricalStatsConfig, Map<String, dynamic>>(categoricalStatsConfig, (value) => value.toMap()),
      'deltaPresenceEstimationConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DeltaPresenceEstimationConfig, Map<String, dynamic>>(deltaPresenceEstimationConfig, (value) => value.toMap()),
      'kAnonymityConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2KAnonymityConfig, Map<String, dynamic>>(kAnonymityConfig, (value) => value.toMap()),
      'kMapEstimationConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2KMapEstimationConfig, Map<String, dynamic>>(kMapEstimationConfig, (value) => value.toMap()),
      'lDiversityConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2LDiversityConfig, Map<String, dynamic>>(lDiversityConfig, (value) => value.toMap()),
      'numericalStatsConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2NumericalStatsConfig, Map<String, dynamic>>(numericalStatsConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2PrivacyMetric.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PrivacyMetric(
      categoricalStatsConfig: map['categoricalStatsConfig'] == null ? null : (GooglePrivacyDlpV2CategoricalStatsConfig.fromMap((map['categoricalStatsConfig'] as Map).cast<String, dynamic>())).input(),
      deltaPresenceEstimationConfig: map['deltaPresenceEstimationConfig'] == null ? null : (GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromMap((map['deltaPresenceEstimationConfig'] as Map).cast<String, dynamic>())).input(),
      kAnonymityConfig: map['kAnonymityConfig'] == null ? null : (GooglePrivacyDlpV2KAnonymityConfig.fromMap((map['kAnonymityConfig'] as Map).cast<String, dynamic>())).input(),
      kMapEstimationConfig: map['kMapEstimationConfig'] == null ? null : (GooglePrivacyDlpV2KMapEstimationConfig.fromMap((map['kMapEstimationConfig'] as Map).cast<String, dynamic>())).input(),
      lDiversityConfig: map['lDiversityConfig'] == null ? null : (GooglePrivacyDlpV2LDiversityConfig.fromMap((map['lDiversityConfig'] as Map).cast<String, dynamic>())).input(),
      numericalStatsConfig: map['numericalStatsConfig'] == null ? null : (GooglePrivacyDlpV2NumericalStatsConfig.fromMap((map['numericalStatsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

