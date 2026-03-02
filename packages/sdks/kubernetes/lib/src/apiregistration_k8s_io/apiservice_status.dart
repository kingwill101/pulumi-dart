// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apiservice_condition.dart';

/// APIServiceStatus contains derived information about an API server
class APIServiceStatus {
  /// Current service state of apiService.
  final pulumi.Input<List<APIServiceCondition>>? conditions;

  /// Creates a new [APIServiceStatus].
  /// [conditions] Current service state of apiService.
  APIServiceStatus({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<APIServiceCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<APIServiceCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory APIServiceStatus.fromMap(Map<String, dynamic> map) {
    return APIServiceStatus(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<APIServiceCondition>(map['conditions']!, (value) => APIServiceCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

