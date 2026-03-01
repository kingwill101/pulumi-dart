// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule_action_request_header.dart';
import 'rules_engine_rule_action_response_header.dart';

class RulesEngineRuleAction {
  /// A `request_header` block as defined below.
  final List<RulesEngineRuleActionRequestHeader>? requestHeaders;
  /// A `response_header` block as defined below.
  final List<RulesEngineRuleActionResponseHeader>? responseHeaders;

  /// Creates a new [RulesEngineRuleAction].
  /// [requestHeaders] A `request_header` block as defined below.
  /// [responseHeaders] A `response_header` block as defined below.
  RulesEngineRuleAction({
    this.requestHeaders,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaders': ?requestHeaders == null ? null : pulumi.Input.encodeList<RulesEngineRuleActionRequestHeader, Map<String, dynamic>>(requestHeaders!, (value) => value.toMap()),
      'responseHeaders': ?responseHeaders == null ? null : pulumi.Input.encodeList<RulesEngineRuleActionResponseHeader, Map<String, dynamic>>(responseHeaders!, (value) => value.toMap()),
    };
  }

  factory RulesEngineRuleAction.fromMap(Map<String, dynamic> map) {
    return RulesEngineRuleAction(
      requestHeaders: map['requestHeaders'] == null ? null : pulumi.Input.decodeList<RulesEngineRuleActionRequestHeader>(map['requestHeaders'], (value) => RulesEngineRuleActionRequestHeader.fromMap((value as Map).cast<String, dynamic>())),
      responseHeaders: map['responseHeaders'] == null ? null : pulumi.Input.decodeList<RulesEngineRuleActionResponseHeader>(map['responseHeaders'], (value) => RulesEngineRuleActionResponseHeader.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

