// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_batch_rule_set_rule_actions_modify_request_header.dart';
import 'frontdoor_batch_rule_set_rule_actions_modify_response_header.dart';
import 'frontdoor_batch_rule_set_rule_actions_route_configuration_override.dart';
import 'frontdoor_batch_rule_set_rule_actions_url_redirect.dart';
import 'frontdoor_batch_rule_set_rule_actions_url_rewrite.dart';

class FrontdoorBatchRuleSetRuleActions {
  /// One or more `modifyRequestHeader` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleActionsModifyRequestHeader>?>? modifyRequestHeaders;
  /// One or more `modifyResponseHeader` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleActionsModifyResponseHeader>?>? modifyResponseHeaders;
  /// A `routeConfigurationOverride` block as defined below.
  ///
  /// &gt; **Note:** `routeConfigurationOverride` conflicts with `urlRedirect`.
  final pulumi.Input<FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverride?>? routeConfigurationOverride;
  /// A `urlRedirect` block as defined below.
  final pulumi.Input<FrontdoorBatchRuleSetRuleActionsUrlRedirect?>? urlRedirect;
  /// A `urlRewrite` block as defined below.
  ///
  /// &gt; **Note:** `urlRewrite` conflicts with `urlRedirect` and vice-versa.
  final pulumi.Input<FrontdoorBatchRuleSetRuleActionsUrlRewrite?>? urlRewrite;

  /// Creates a new [FrontdoorBatchRuleSetRuleActions].
  /// [modifyRequestHeaders] One or more `modifyRequestHeader` blocks as defined below.
  /// [modifyResponseHeaders] One or more `modifyResponseHeader` blocks as defined below.
  /// [routeConfigurationOverride] A `routeConfigurationOverride` block as defined below.
  /// [urlRedirect] A `urlRedirect` block as defined below.
  /// [urlRewrite] A `urlRewrite` block as defined below.
  const FrontdoorBatchRuleSetRuleActions({
    this.modifyRequestHeaders,
    this.modifyResponseHeaders,
    this.routeConfigurationOverride,
    this.urlRedirect,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifyRequestHeaders': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleActionsModifyRequestHeader>, List<Map<String, dynamic>>>(modifyRequestHeaders, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleActionsModifyRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifyResponseHeaders': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleActionsModifyResponseHeader>, List<Map<String, dynamic>>>(modifyResponseHeaders, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleActionsModifyResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeConfigurationOverride': ?pulumi.Input.mapOptionalInputValue<FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverride, Map<String, dynamic>>(routeConfigurationOverride, (value) => value.toMap()),
      'urlRedirect': ?pulumi.Input.mapOptionalInputValue<FrontdoorBatchRuleSetRuleActionsUrlRedirect, Map<String, dynamic>>(urlRedirect, (value) => value.toMap()),
      'urlRewrite': ?pulumi.Input.mapOptionalInputValue<FrontdoorBatchRuleSetRuleActionsUrlRewrite, Map<String, dynamic>>(urlRewrite, (value) => value.toMap()),
    };
  }

  factory FrontdoorBatchRuleSetRuleActions.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleActions(
      modifyRequestHeaders: (() { final guardedValue = map['modifyRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleActionsModifyRequestHeader>(guardedValue, (value) => FrontdoorBatchRuleSetRuleActionsModifyRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modifyResponseHeaders: (() { final guardedValue = map['modifyResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleActionsModifyResponseHeader>(guardedValue, (value) => FrontdoorBatchRuleSetRuleActionsModifyResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routeConfigurationOverride: (() { final guardedValue = map['routeConfigurationOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRedirect: (() { final guardedValue = map['urlRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorBatchRuleSetRuleActionsUrlRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRewrite: (() { final guardedValue = map['urlRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorBatchRuleSetRuleActionsUrlRewrite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
