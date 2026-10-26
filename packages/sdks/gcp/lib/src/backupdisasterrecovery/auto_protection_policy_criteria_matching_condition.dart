// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_protection_policy_criteria_matching_condition_label_condition.dart';

class AutoProtectionPolicyCriteriaMatchingCondition {
  /// A condition that matches resources based on their labels.
  /// Structure is documented below.
  final pulumi.Input<AutoProtectionPolicyCriteriaMatchingConditionLabelCondition?>? labelCondition;

  /// Creates a new [AutoProtectionPolicyCriteriaMatchingCondition].
  /// [labelCondition] A condition that matches resources based on their labels.
  const AutoProtectionPolicyCriteriaMatchingCondition({
    this.labelCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelCondition': ?pulumi.Input.mapOptionalInputValue<AutoProtectionPolicyCriteriaMatchingConditionLabelCondition, Map<String, dynamic>>(labelCondition, (value) => value.toMap()),
    };
  }

  factory AutoProtectionPolicyCriteriaMatchingCondition.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyCriteriaMatchingCondition(
      labelCondition: (() { final guardedValue = map['labelCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoProtectionPolicyCriteriaMatchingConditionLabelCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
