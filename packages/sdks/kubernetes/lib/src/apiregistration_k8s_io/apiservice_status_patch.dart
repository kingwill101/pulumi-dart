// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apiservice_condition_patch.dart';

/// APIServiceStatus contains derived information about an API server
class APIServiceStatusPatch {
  /// Current service state of apiService.
  final pulumi.Input<List<APIServiceConditionPatch>>? conditions;

  /// Creates a new [APIServiceStatusPatch].
  /// [conditions] Current service state of apiService.
  APIServiceStatusPatch({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<APIServiceConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<APIServiceConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory APIServiceStatusPatch.fromMap(Map<String, dynamic> map) {
    return APIServiceStatusPatch(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<APIServiceConditionPatch>(guardedValue, (value) => APIServiceConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

