// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_boost_action_interpolation_boost_spec_control_point.dart';

class ControlBoostActionInterpolationBoostSpec {
  /// The attribute type to be used to determine the boost amount.
  /// Possible values are: `NUMERICAL`, `FRESHNESS`.
  final pulumi.Input<String>? attributeType;
  /// The control points used to define the curve.
  /// Structure is documented below.
  final pulumi.Input<ControlBoostActionInterpolationBoostSpecControlPoint>? controlPoint;
  /// The name of the field whose value will be used to determine the boost amount.
  final pulumi.Input<String>? fieldName;
  /// The interpolation type to be applied to connect the control points.
  /// Possible values are: `LINEAR`.
  final pulumi.Input<String>? interpolationType;

  /// Creates a new [ControlBoostActionInterpolationBoostSpec].
  /// [attributeType] The attribute type to be used to determine the boost amount.
  /// [controlPoint] The control points used to define the curve.
  /// [fieldName] The name of the field whose value will be used to determine the boost amount.
  /// [interpolationType] The interpolation type to be applied to connect the control points.
  ControlBoostActionInterpolationBoostSpec({
    this.attributeType,
    this.controlPoint,
    this.fieldName,
    this.interpolationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeType': ?attributeType,
      'controlPoint': ?pulumi.Input.mapOptionalInputValue<ControlBoostActionInterpolationBoostSpecControlPoint, Map<String, dynamic>>(controlPoint, (value) => value.toMap()),
      'fieldName': ?fieldName,
      'interpolationType': ?interpolationType,
    };
  }

  factory ControlBoostActionInterpolationBoostSpec.fromMap(Map<String, dynamic> map) {
    return ControlBoostActionInterpolationBoostSpec(
      attributeType: (() { final guardedValue = map['attributeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlPoint: (() { final guardedValue = map['controlPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlBoostActionInterpolationBoostSpecControlPoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fieldName: (() { final guardedValue = map['fieldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interpolationType: (() { final guardedValue = map['interpolationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

