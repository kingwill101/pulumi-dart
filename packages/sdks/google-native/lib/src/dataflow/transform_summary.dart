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
      'kind': ?pulumi.Input.mapOptionalInputValue<TransformSummaryKind, String>(kind, (value) => value.wireValue),
      'name': ?name,
      'outputCollectionName': ?outputCollectionName,
    };
  }

  factory TransformSummary.fromMap(Map<String, dynamic> map) {
    return TransformSummary(
      displayData: (() { final guardedValue = map['displayData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DisplayData>(guardedValue, (value) => DisplayData.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputCollectionName: (() { final guardedValue = map['inputCollectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransformSummaryKind.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputCollectionName: (() { final guardedValue = map['outputCollectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

