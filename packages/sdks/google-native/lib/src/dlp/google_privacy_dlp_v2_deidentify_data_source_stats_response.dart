// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Summary of what was modified during a transformation.
class GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse {
  /// Number of successfully applied transformations.
  final pulumi.Input<String> transformationCount;
  /// Number of errors encountered while trying to apply transformations.
  final pulumi.Input<String> transformationErrorCount;
  /// Total size in bytes that were transformed in some way.
  final pulumi.Input<String> transformedBytes;

  /// Creates a new [GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse].
  /// [transformationCount] Number of successfully applied transformations.
  /// [transformationErrorCount] Number of errors encountered while trying to apply transformations.
  /// [transformedBytes] Total size in bytes that were transformed in some way.
  const GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse({
    required this.transformationCount,
    required this.transformationErrorCount,
    required this.transformedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformationCount': transformationCount,
      'transformationErrorCount': transformationErrorCount,
      'transformedBytes': transformedBytes,
    };
  }

  factory GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse(
      transformationCount: pulumi.Input.fromValue(map['transformationCount'] as String),
      transformationErrorCount: pulumi.Input.fromValue(map['transformationErrorCount'] as String),
      transformedBytes: pulumi.Input.fromValue(map['transformedBytes'] as String),
    );
  }
}
