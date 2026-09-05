// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_batch_rule_set_rule_action_modify_request_header.dart';
import 'get_frontdoor_batch_rule_set_rule_action_modify_response_header.dart';
import 'get_frontdoor_batch_rule_set_rule_action_route_configuration_override.dart';
import 'get_frontdoor_batch_rule_set_rule_action_url_redirect.dart';
import 'get_frontdoor_batch_rule_set_rule_action_url_rewrite.dart';

class GetFrontdoorBatchRuleSetRuleAction {
  /// One or more `modifyRequestHeader` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleActionModifyRequestHeader>> modifyRequestHeaders;
  /// One or more `modifyResponseHeader` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader>> modifyResponseHeaders;
  /// A `routeConfigurationOverride` block as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride>> routeConfigurationOverrides;
  /// A `urlRedirect` block as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleActionUrlRedirect>> urlRedirects;
  /// A `urlRewrite` block as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleActionUrlRewrite>> urlRewrites;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleAction].
  /// [modifyRequestHeaders] One or more `modifyRequestHeader` blocks as defined below.
  /// [modifyResponseHeaders] One or more `modifyResponseHeader` blocks as defined below.
  /// [routeConfigurationOverrides] A `routeConfigurationOverride` block as defined below.
  /// [urlRedirects] A `urlRedirect` block as defined below.
  /// [urlRewrites] A `urlRewrite` block as defined below.
  const GetFrontdoorBatchRuleSetRuleAction({
    required this.modifyRequestHeaders,
    required this.modifyResponseHeaders,
    required this.routeConfigurationOverrides,
    required this.urlRedirects,
    required this.urlRewrites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifyRequestHeaders': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleActionModifyRequestHeader>, List<Map<String, dynamic>>>(modifyRequestHeaders, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleActionModifyRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifyResponseHeaders': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader>, List<Map<String, dynamic>>>(modifyResponseHeaders, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeConfigurationOverrides': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride>, List<Map<String, dynamic>>>(routeConfigurationOverrides, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlRedirects': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleActionUrlRedirect>, List<Map<String, dynamic>>>(urlRedirects, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleActionUrlRedirect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlRewrites': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleActionUrlRewrite>, List<Map<String, dynamic>>>(urlRewrites, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleActionUrlRewrite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFrontdoorBatchRuleSetRuleAction.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleAction(
      modifyRequestHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleActionModifyRequestHeader>(map['modifyRequestHeaders']!, (value) => GetFrontdoorBatchRuleSetRuleActionModifyRequestHeader.fromMap((value as Map).cast<String, dynamic>()))),
      modifyResponseHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader>(map['modifyResponseHeaders']!, (value) => GetFrontdoorBatchRuleSetRuleActionModifyResponseHeader.fromMap((value as Map).cast<String, dynamic>()))),
      routeConfigurationOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride>(map['routeConfigurationOverrides']!, (value) => GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride.fromMap((value as Map).cast<String, dynamic>()))),
      urlRedirects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleActionUrlRedirect>(map['urlRedirects']!, (value) => GetFrontdoorBatchRuleSetRuleActionUrlRedirect.fromMap((value as Map).cast<String, dynamic>()))),
      urlRewrites: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleActionUrlRewrite>(map['urlRewrites']!, (value) => GetFrontdoorBatchRuleSetRuleActionUrlRewrite.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
