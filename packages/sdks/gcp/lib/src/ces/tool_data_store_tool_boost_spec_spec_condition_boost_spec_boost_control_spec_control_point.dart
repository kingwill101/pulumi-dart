// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint {
  /// Can be one of:
  /// 1. The numerical field value.
  /// 2. The duration spec for freshness:
  /// The value must be formatted as an XSD `dayTimeDuration` value (a
  /// restricted subset of an ISO 8601 duration value). The pattern for
  /// this is: `nDnM]`.
  final pulumi.Input<String?>? attributeValue;
  /// The value between -1 to 1 by which to boost the score if the
  /// attributeValue evaluates to the value specified above.
  final pulumi.Input<double?>? boostAmount;

  /// Creates a new [ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint].
  /// [attributeValue] Can be one of:
  /// [boostAmount] The value between -1 to 1 by which to boost the score if the
  const ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint({
    this.attributeValue,
    this.boostAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeValue': ?attributeValue,
      'boostAmount': ?boostAmount,
    };
  }

  factory ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint(
      attributeValue: (() { final guardedValue = map['attributeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      boostAmount: (() { final guardedValue = map['boostAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
