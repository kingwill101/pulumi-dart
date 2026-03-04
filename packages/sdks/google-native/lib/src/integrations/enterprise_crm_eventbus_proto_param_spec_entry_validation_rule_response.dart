// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_double_range_response.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_int_range_response.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_string_regex_response.dart';

class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse {
  final pulumi.Input<
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse
  >
  doubleRange;
  final pulumi.Input<
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse
  >
  intRange;
  final pulumi.Input<
    EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse
  >
  stringRegex;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse].
  /// [doubleRange] Required.
  /// [intRange] Required.
  /// [stringRegex] Required.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse({
    required this.doubleRange,
    required this.intRange,
    required this.stringRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleRange':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse,
            Map<String, dynamic>
          >(doubleRange, (value) => value.toMap()),
      'intRange':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse,
            Map<String, dynamic>
          >(intRange, (value) => value.toMap()),
      'stringRegex':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse,
            Map<String, dynamic>
          >(stringRegex, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse(
      doubleRange: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse.fromMap(
          (map['doubleRange']! as Map).cast<String, dynamic>(),
        ),
      ),
      intRange: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse.fromMap(
          (map['intRange']! as Map).cast<String, dynamic>(),
        ),
      ),
      stringRegex: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse.fromMap(
          (map['stringRegex']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
