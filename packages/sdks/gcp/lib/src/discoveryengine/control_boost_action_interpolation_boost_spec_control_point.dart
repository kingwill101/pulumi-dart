// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlBoostActionInterpolationBoostSpecControlPoint {
  /// The attribute value of the control point.
  final pulumi.Input<String>? attributeValue;
  /// The value between -1 to 1 by which to boost the score if the attributeValue
  /// evaluates to the value specified above.
  final pulumi.Input<double>? boostAmount;

  /// Creates a new [ControlBoostActionInterpolationBoostSpecControlPoint].
  /// [attributeValue] The attribute value of the control point.
  /// [boostAmount] The value between -1 to 1 by which to boost the score if the attributeValue
  ControlBoostActionInterpolationBoostSpecControlPoint({
    this.attributeValue,
    this.boostAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeValue': ?attributeValue,
      'boostAmount': ?boostAmount,
    };
  }

  factory ControlBoostActionInterpolationBoostSpecControlPoint.fromMap(Map<String, dynamic> map) {
    return ControlBoostActionInterpolationBoostSpecControlPoint(
      attributeValue: (() { final guardedValue = map['attributeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      boostAmount: (() { final guardedValue = map['boostAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

