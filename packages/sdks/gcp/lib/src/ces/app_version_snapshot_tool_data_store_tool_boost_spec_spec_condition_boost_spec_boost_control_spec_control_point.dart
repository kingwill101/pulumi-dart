// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint {
  /// (Output)
  /// Can be one of:
  /// 1. The numerical field value.
  /// 2. The duration spec for freshness:
  /// The value must be formatted as an XSD `dayTimeDuration` value (a
  /// restricted subset of an ISO 8601 duration value). The pattern for
  /// this is: `nDnM]`.
  final pulumi.Input<String>? attributeValue;
  /// (Output)
  /// The value between -1 to 1 by which to boost the score if the
  /// attribute_value evaluates to the value specified above.
  final pulumi.Input<double>? boostAmount;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint].
  /// [attributeValue] (Output)
  /// [boostAmount] (Output)
  AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint({
    this.attributeValue,
    this.boostAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeValue': ?attributeValue,
      'boostAmount': ?boostAmount,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint(
      attributeValue: map['attributeValue'] == null ? null : (map['attributeValue']! as String).input(),
      boostAmount: map['boostAmount'] == null ? null : (map['boostAmount']! as double).input(),
    );
  }
}

