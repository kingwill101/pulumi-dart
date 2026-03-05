// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_response.dart';

/// Result of the numerical stats computation.
class GooglePrivacyDlpV2NumericalStatsResultResponse {
  /// Maximum value appearing in the column.
  final pulumi.Input<GooglePrivacyDlpV2ValueResponse> maxValue;
  /// Minimum value appearing in the column.
  final pulumi.Input<GooglePrivacyDlpV2ValueResponse> minValue;
  /// List of 99 values that partition the set of field values into 100 equal sized buckets.
  final pulumi.Input<List<GooglePrivacyDlpV2ValueResponse>> quantileValues;

  /// Creates a new [GooglePrivacyDlpV2NumericalStatsResultResponse].
  /// [maxValue] Maximum value appearing in the column.
  /// [minValue] Minimum value appearing in the column.
  /// [quantileValues] List of 99 values that partition the set of field values into 100 equal sized buckets.
  GooglePrivacyDlpV2NumericalStatsResultResponse({
    required this.maxValue,
    required this.minValue,
    required this.quantileValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(maxValue, (value) => value.toMap()),
      'minValue': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(minValue, (value) => value.toMap()),
      'quantileValues': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2ValueResponse>, List<Map<String, dynamic>>>(quantileValues, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2NumericalStatsResultResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2NumericalStatsResultResponse(
      maxValue: pulumi.Input.fromValue(GooglePrivacyDlpV2ValueResponse.fromMap((map['maxValue']! as Map).cast<String, dynamic>())),
      minValue: pulumi.Input.fromValue(GooglePrivacyDlpV2ValueResponse.fromMap((map['minValue']! as Map).cast<String, dynamic>())),
      quantileValues: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2ValueResponse>(map['quantileValues']!, (value) => GooglePrivacyDlpV2ValueResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

