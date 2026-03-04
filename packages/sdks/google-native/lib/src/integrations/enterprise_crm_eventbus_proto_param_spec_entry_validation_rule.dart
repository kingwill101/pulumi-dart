// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_double_range.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_int_range.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_string_regex.dart';

class EnterpriseCrmEventbusProtoParamSpecEntryValidationRule {
  final pulumi.Input<
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange
  >?
  doubleRange;
  final pulumi.Input<
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange
  >?
  intRange;
  final pulumi.Input<
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex
  >?
  stringRegex;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRule].
  /// [doubleRange] Optional.
  /// [intRange] Optional.
  /// [stringRegex] Optional.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRule({
    this.doubleRange,
    this.intRange,
    this.stringRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleRange':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange,
            Map<String, dynamic>
          >(doubleRange, (value) => value.toMap()),
      'intRange':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange,
            Map<String, dynamic>
          >(intRange, (value) => value.toMap()),
      'stringRegex':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex,
            Map<String, dynamic>
          >(stringRegex, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRule(
      doubleRange: (() {
        final guardedValue = map['doubleRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      intRange: (() {
        final guardedValue = map['intRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stringRegex: (() {
        final guardedValue = map['stringRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
