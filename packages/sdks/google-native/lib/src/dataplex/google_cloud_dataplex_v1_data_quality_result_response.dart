// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_column_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_dimension_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_result_post_scan_actions_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_result_response.dart';
import 'google_cloud_dataplex_v1_scanned_data_response.dart';

/// The output of a DataQualityScan.
class GoogleCloudDataplexV1DataQualityResultResponse {
  /// A list of results at the column level.A column will have a corresponding DataQualityColumnResult if and only if there is at least one rule with the 'column' field set to it.
  final pulumi.Input<List<GoogleCloudDataplexV1DataQualityColumnResultResponse>> columns;
  /// A list of results at the dimension level.A dimension will have a corresponding DataQualityDimensionResult if and only if there is at least one rule with the 'dimension' field set to it.
  final pulumi.Input<List<GoogleCloudDataplexV1DataQualityDimensionResultResponse>> dimensions;
  /// Overall data quality result -- true if all rules passed.
  final pulumi.Input<bool> passed;
  /// The result of post scan actions.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse> postScanActionsResult;
  /// The count of rows processed.
  final pulumi.Input<String> rowCount;
  /// A list of all the rules in a job, and their results.
  final pulumi.Input<List<GoogleCloudDataplexV1DataQualityRuleResultResponse>> rules;
  /// The data scanned for this result.
  final pulumi.Input<GoogleCloudDataplexV1ScannedDataResponse> scannedData;
  /// The overall data quality score.The score ranges between 0, 100 (up to two decimal points).
  final pulumi.Input<double> score;

  /// Creates a new [GoogleCloudDataplexV1DataQualityResultResponse].
  /// [columns] A list of results at the column level.A column will have a corresponding DataQualityColumnResult if and only if there is at least one rule with the 'column' field set to it.
  /// [dimensions] A list of results at the dimension level.A dimension will have a corresponding DataQualityDimensionResult if and only if there is at least one rule with the 'dimension' field set to it.
  /// [passed] Overall data quality result -- true if all rules passed.
  /// [postScanActionsResult] The result of post scan actions.
  /// [rowCount] The count of rows processed.
  /// [rules] A list of all the rules in a job, and their results.
  /// [scannedData] The data scanned for this result.
  /// [score] The overall data quality score.The score ranges between 0, 100 (up to two decimal points).
  GoogleCloudDataplexV1DataQualityResultResponse({
    required this.columns,
    required this.dimensions,
    required this.passed,
    required this.postScanActionsResult,
    required this.rowCount,
    required this.rules,
    required this.scannedData,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.mapInputValue<List<GoogleCloudDataplexV1DataQualityColumnResultResponse>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1DataQualityColumnResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': pulumi.Input.mapInputValue<List<GoogleCloudDataplexV1DataQualityDimensionResultResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1DataQualityDimensionResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'passed': passed,
      'postScanActionsResult': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse, Map<String, dynamic>>(postScanActionsResult, (value) => value.toMap()),
      'rowCount': rowCount,
      'rules': pulumi.Input.mapInputValue<List<GoogleCloudDataplexV1DataQualityRuleResultResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1DataQualityRuleResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scannedData': pulumi.Input.mapInputValue<GoogleCloudDataplexV1ScannedDataResponse, Map<String, dynamic>>(scannedData, (value) => value.toMap()),
      'score': score,
    };
  }

  factory GoogleCloudDataplexV1DataQualityResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityResultResponse(
      columns: (pulumi.Input.decodeList<GoogleCloudDataplexV1DataQualityColumnResultResponse>(map['columns'], (value) => GoogleCloudDataplexV1DataQualityColumnResultResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimensions: (pulumi.Input.decodeList<GoogleCloudDataplexV1DataQualityDimensionResultResponse>(map['dimensions'], (value) => GoogleCloudDataplexV1DataQualityDimensionResultResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      passed: (map['passed'] as bool).input(),
      postScanActionsResult: (GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse.fromMap((map['postScanActionsResult'] as Map).cast<String, dynamic>())).input(),
      rowCount: (map['rowCount'] as String).input(),
      rules: (pulumi.Input.decodeList<GoogleCloudDataplexV1DataQualityRuleResultResponse>(map['rules'], (value) => GoogleCloudDataplexV1DataQualityRuleResultResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scannedData: (GoogleCloudDataplexV1ScannedDataResponse.fromMap((map['scannedData'] as Map).cast<String, dynamic>())).input(),
      score: (map['score'] as double).input(),
    );
  }
}

