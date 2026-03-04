// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule_action_request_header.dart';
import 'rules_engine_rule_action_response_header.dart';

class RulesEngineRuleAction {
  /// A `request_header` block as defined below.
  final pulumi.Input<List<RulesEngineRuleActionRequestHeader>>? requestHeaders;

  /// A `response_header` block as defined below.
  final pulumi.Input<List<RulesEngineRuleActionResponseHeader>>?
  responseHeaders;

  /// Creates a new [RulesEngineRuleAction].
  /// [requestHeaders] A `request_header` block as defined below.
  /// [responseHeaders] A `response_header` block as defined below.
  RulesEngineRuleAction({this.requestHeaders, this.responseHeaders});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<RulesEngineRuleActionRequestHeader>,
            List<Map<String, dynamic>>
          >(
            requestHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  RulesEngineRuleActionRequestHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'responseHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<RulesEngineRuleActionResponseHeader>,
            List<Map<String, dynamic>>
          >(
            responseHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  RulesEngineRuleActionResponseHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RulesEngineRuleAction.fromMap(Map<String, dynamic> map) {
    return RulesEngineRuleAction(
      requestHeaders: (() {
        final guardedValue = map['requestHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RulesEngineRuleActionRequestHeader>(
            guardedValue,
            (value) => RulesEngineRuleActionRequestHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      responseHeaders: (() {
        final guardedValue = map['responseHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RulesEngineRuleActionResponseHeader>(
            guardedValue,
            (value) => RulesEngineRuleActionResponseHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
