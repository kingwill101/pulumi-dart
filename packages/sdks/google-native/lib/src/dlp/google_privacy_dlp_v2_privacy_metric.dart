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
      categoricalStatsConfig: (() { final guardedValue = map['categoricalStatsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CategoricalStatsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deltaPresenceEstimationConfig: (() { final guardedValue = map['deltaPresenceEstimationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kAnonymityConfig: (() { final guardedValue = map['kAnonymityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2KAnonymityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kMapEstimationConfig: (() { final guardedValue = map['kMapEstimationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2KMapEstimationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lDiversityConfig: (() { final guardedValue = map['lDiversityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2LDiversityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numericalStatsConfig: (() { final guardedValue = map['numericalStatsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2NumericalStatsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

