// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_error_kind_response.dart';

/// Get Insights result metadata.
class GetInsightsResultsMetadataResponse {
  /// information about the failed queries
  final pulumi.Input<List<GetInsightsErrorKindResponse>>? errors;
  /// the total items found for the insights request
  final pulumi.Input<int> totalCount;

  /// Creates a new [GetInsightsResultsMetadataResponse].
  /// [errors] information about the failed queries
  /// [totalCount] the total items found for the insights request
  GetInsightsResultsMetadataResponse({
    this.errors,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<GetInsightsErrorKindResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<GetInsightsErrorKindResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalCount': totalCount,
    };
  }

  factory GetInsightsResultsMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GetInsightsResultsMetadataResponse(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetInsightsErrorKindResponse>(guardedValue, (value) => GetInsightsErrorKindResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      totalCount: pulumi.Input.fromValue(map['totalCount'] as int),
    );
  }
}

