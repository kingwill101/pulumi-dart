// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'display_data_response.dart';

/// Description of the type, names/ids, and input/outputs for a transform.
class TransformSummaryResponse {
  /// Transform-specific display data.
  final pulumi.Input<List<DisplayDataResponse>> displayData;
  /// User names for all collection inputs to this transform.
  final pulumi.Input<List<String>> inputCollectionName;
  /// Type of transform.
  final pulumi.Input<String> kind;
  /// User provided name for this transform instance.
  final pulumi.Input<String> name;
  /// User names for all collection outputs to this transform.
  final pulumi.Input<List<String>> outputCollectionName;

  /// Creates a new [TransformSummaryResponse].
  /// [displayData] Transform-specific display data.
  /// [inputCollectionName] User names for all collection inputs to this transform.
  /// [kind] Type of transform.
  /// [name] User provided name for this transform instance.
  /// [outputCollectionName] User names for all collection outputs to this transform.
  const TransformSummaryResponse({
    required this.displayData,
    required this.inputCollectionName,
    required this.kind,
    required this.name,
    required this.outputCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayData': pulumi.Input.mapInputValue<List<DisplayDataResponse>, List<Map<String, dynamic>>>(displayData, (value) => pulumi.Input.encodeList<DisplayDataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputCollectionName': inputCollectionName,
      'kind': kind,
      'name': name,
      'outputCollectionName': outputCollectionName,
    };
  }

  factory TransformSummaryResponse.fromMap(Map<String, dynamic> map) {
    return TransformSummaryResponse(
      displayData: pulumi.Input.fromValue(pulumi.Input.decodeList<DisplayDataResponse>(map['displayData']!, (value) => DisplayDataResponse.fromMap((value as Map).cast<String, dynamic>()))),
      inputCollectionName: pulumi.Input.fromValue((map['inputCollectionName'] as List).cast<String>()),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputCollectionName: pulumi.Input.fromValue((map['outputCollectionName'] as List).cast<String>()),
    );
  }
}

