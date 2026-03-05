// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_actions_request_header_action.dart';
import 'frontdoor_rule_actions_response_header_action.dart';
import 'frontdoor_rule_actions_route_configuration_override_action.dart';
import 'frontdoor_rule_actions_url_redirect_action.dart';
import 'frontdoor_rule_actions_url_rewrite_action.dart';

class FrontdoorRuleActions {
  /// A `request_header_action` block as defined below.
  final pulumi.Input<List<FrontdoorRuleActionsRequestHeaderAction>>? requestHeaderActions;
  /// A `response_header_action` block as defined below.
  final pulumi.Input<List<FrontdoorRuleActionsResponseHeaderAction>>? responseHeaderActions;
  /// A `route_configuration_override_action` block as defined below.
  final pulumi.Input<FrontdoorRuleActionsRouteConfigurationOverrideAction>? routeConfigurationOverrideAction;
  /// A `url_redirect_action` block as defined below. You may **not** have a `url_redirect_action` **and** a `url_rewrite_action` defined in the same `actions` block.
  final pulumi.Input<FrontdoorRuleActionsUrlRedirectAction>? urlRedirectAction;
  /// A `url_rewrite_action` block as defined below. You may **not** have a `url_rewrite_action` **and** a `url_redirect_action` defined in the same `actions` block.
  final pulumi.Input<FrontdoorRuleActionsUrlRewriteAction>? urlRewriteAction;

  /// Creates a new [FrontdoorRuleActions].
  /// [requestHeaderActions] A `request_header_action` block as defined below.
  /// [responseHeaderActions] A `response_header_action` block as defined below.
  /// [routeConfigurationOverrideAction] A `route_configuration_override_action` block as defined below.
  /// [urlRedirectAction] A `url_redirect_action` block as defined below. You may **not** have a `url_redirect_action` **and** a `url_rewrite_action` defined in the same `actions` block.
  /// [urlRewriteAction] A `url_rewrite_action` block as defined below. You may **not** have a `url_rewrite_action` **and** a `url_redirect_action` defined in the same `actions` block.
  FrontdoorRuleActions({
    this.requestHeaderActions,
    this.responseHeaderActions,
    this.routeConfigurationOverrideAction,
    this.urlRedirectAction,
    this.urlRewriteAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleActionsRequestHeaderAction>, List<Map<String, dynamic>>>(requestHeaderActions, (value) => pulumi.Input.encodeList<FrontdoorRuleActionsRequestHeaderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleActionsResponseHeaderAction>, List<Map<String, dynamic>>>(responseHeaderActions, (value) => pulumi.Input.encodeList<FrontdoorRuleActionsResponseHeaderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeConfigurationOverrideAction': ?pulumi.Input.mapOptionalInputValue<FrontdoorRuleActionsRouteConfigurationOverrideAction, Map<String, dynamic>>(routeConfigurationOverrideAction, (value) => value.toMap()),
      'urlRedirectAction': ?pulumi.Input.mapOptionalInputValue<FrontdoorRuleActionsUrlRedirectAction, Map<String, dynamic>>(urlRedirectAction, (value) => value.toMap()),
      'urlRewriteAction': ?pulumi.Input.mapOptionalInputValue<FrontdoorRuleActionsUrlRewriteAction, Map<String, dynamic>>(urlRewriteAction, (value) => value.toMap()),
    };
  }

  factory FrontdoorRuleActions.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleActions(
      requestHeaderActions: (() { final guardedValue = map['requestHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorRuleActionsRequestHeaderAction>(guardedValue, (value) => FrontdoorRuleActionsRequestHeaderAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeaderActions: (() { final guardedValue = map['responseHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorRuleActionsResponseHeaderAction>(guardedValue, (value) => FrontdoorRuleActionsResponseHeaderAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routeConfigurationOverrideAction: (() { final guardedValue = map['routeConfigurationOverrideAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorRuleActionsRouteConfigurationOverrideAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRedirectAction: (() { final guardedValue = map['urlRedirectAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorRuleActionsUrlRedirectAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRewriteAction: (() { final guardedValue = map['urlRewriteAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorRuleActionsUrlRewriteAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

