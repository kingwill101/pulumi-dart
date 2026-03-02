// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'display_data.dart';
import 'transform_summary_kind.dart';

/// Description of the type, names/ids, and input/outputs for a transform.
class TransformSummary {
  /// Transform-specific display data.
  final pulumi.Input<List<DisplayData>>? displayData;
  /// SDK generated id of this transform instance.
  final pulumi.Input<String>? id;
  /// User names for all collection inputs to this transform.
  final pulumi.Input<List<String>>? inputCollectionName;
  /// Type of transform.
  final pulumi.Input<TransformSummaryKind>? kind;
  /// User provided name for this transform instance.
  final pulumi.Input<String>? name;
  /// User names for all collection outputs to this transform.
  final pulumi.Input<List<String>>? outputCollectionName;

  /// Creates a new [TransformSummary].
  /// [displayData] Transform-specific display data.
  /// [id] SDK generated id of this transform instance.
  /// [inputCollectionName] User names for all collection inputs to this transform.
  /// [kind] Type of transform.
  /// [name] User provided name for this transform instance.
  /// [outputCollectionName] User names for all collection outputs to this transform.
  TransformSummary({
    this.displayData,
    this.id,
    this.inputCollectionName,
    this.kind,
    this.name,
    this.outputCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayData': ?pulumi.Input.mapOptionalInputValue<List<DisplayData>, List<Map<String, dynamic>>>(displayData, (value) => pulumi.Input.encodeList<DisplayData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'inputCollectionName': ?inputCollectionName,
      'kind': ?pulumi.Input.mapOptionalInputValue<TransformSummaryKind, String>(kind, (value) => value.value),
      'name': ?name,
      'outputCollectionName': ?outputCollectionName,
    };
  }

  factory TransformSummary.fromMap(Map<String, dynamic> map) {
    return TransformSummary(
      displayData: map['displayData'] == null ? null : (pulumi.Input.decodeList<DisplayData>(map['displayData'], (value) => DisplayData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      inputCollectionName: map['inputCollectionName'] == null ? null : ((map['inputCollectionName'] as List).cast<String>()).input(),
      kind: map['kind'] == null ? null : (TransformSummaryKind.fromValue(map['kind'] as String)).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outputCollectionName: map['outputCollectionName'] == null ? null : ((map['outputCollectionName'] as List).cast<String>()).input(),
    );
  }
}

