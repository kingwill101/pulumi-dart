// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_global_delivery_rule_cache_expiration_action.dart';
import 'endpoint_global_delivery_rule_cache_key_query_string_action.dart';
import 'endpoint_global_delivery_rule_modify_request_header_action.dart';
import 'endpoint_global_delivery_rule_modify_response_header_action.dart';
import 'endpoint_global_delivery_rule_url_redirect_action.dart';
import 'endpoint_global_delivery_rule_url_rewrite_action.dart';

class EndpointGlobalDeliveryRule {
  /// A `cache_expiration_action` block as defined above.
  final pulumi.Input<EndpointGlobalDeliveryRuleCacheExpirationAction>? cacheExpirationAction;
  /// A `cache_key_query_string_action` block as defined above.
  final pulumi.Input<EndpointGlobalDeliveryRuleCacheKeyQueryStringAction>? cacheKeyQueryStringAction;
  /// A `modify_request_header_action` block as defined below.
  final pulumi.Input<List<EndpointGlobalDeliveryRuleModifyRequestHeaderAction>>? modifyRequestHeaderActions;
  /// A `modify_response_header_action` block as defined below.
  final pulumi.Input<List<EndpointGlobalDeliveryRuleModifyResponseHeaderAction>>? modifyResponseHeaderActions;
  /// A `url_redirect_action` block as defined below.
  final pulumi.Input<EndpointGlobalDeliveryRuleUrlRedirectAction>? urlRedirectAction;
  /// A `url_rewrite_action` block as defined below.
  final pulumi.Input<EndpointGlobalDeliveryRuleUrlRewriteAction>? urlRewriteAction;

  /// Creates a new [EndpointGlobalDeliveryRule].
  /// [cacheExpirationAction] A `cache_expiration_action` block as defined above.
  /// [cacheKeyQueryStringAction] A `cache_key_query_string_action` block as defined above.
  /// [modifyRequestHeaderActions] A `modify_request_header_action` block as defined below.
  /// [modifyResponseHeaderActions] A `modify_response_header_action` block as defined below.
  /// [urlRedirectAction] A `url_redirect_action` block as defined below.
  /// [urlRewriteAction] A `url_rewrite_action` block as defined below.
  EndpointGlobalDeliveryRule({
    this.cacheExpirationAction,
    this.cacheKeyQueryStringAction,
    this.modifyRequestHeaderActions,
    this.modifyResponseHeaderActions,
    this.urlRedirectAction,
    this.urlRewriteAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheExpirationAction': ?pulumi.Input.mapOptionalInputValue<EndpointGlobalDeliveryRuleCacheExpirationAction, Map<String, dynamic>>(cacheExpirationAction, (value) => value.toMap()),
      'cacheKeyQueryStringAction': ?pulumi.Input.mapOptionalInputValue<EndpointGlobalDeliveryRuleCacheKeyQueryStringAction, Map<String, dynamic>>(cacheKeyQueryStringAction, (value) => value.toMap()),
      'modifyRequestHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<EndpointGlobalDeliveryRuleModifyRequestHeaderAction>, List<Map<String, dynamic>>>(modifyRequestHeaderActions, (value) => pulumi.Input.encodeList<EndpointGlobalDeliveryRuleModifyRequestHeaderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifyResponseHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<EndpointGlobalDeliveryRuleModifyResponseHeaderAction>, List<Map<String, dynamic>>>(modifyResponseHeaderActions, (value) => pulumi.Input.encodeList<EndpointGlobalDeliveryRuleModifyResponseHeaderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlRedirectAction': ?pulumi.Input.mapOptionalInputValue<EndpointGlobalDeliveryRuleUrlRedirectAction, Map<String, dynamic>>(urlRedirectAction, (value) => value.toMap()),
      'urlRewriteAction': ?pulumi.Input.mapOptionalInputValue<EndpointGlobalDeliveryRuleUrlRewriteAction, Map<String, dynamic>>(urlRewriteAction, (value) => value.toMap()),
    };
  }

  factory EndpointGlobalDeliveryRule.fromMap(Map<String, dynamic> map) {
    return EndpointGlobalDeliveryRule(
      cacheExpirationAction: (() { final guardedValue = map['cacheExpirationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointGlobalDeliveryRuleCacheExpirationAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheKeyQueryStringAction: (() { final guardedValue = map['cacheKeyQueryStringAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointGlobalDeliveryRuleCacheKeyQueryStringAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifyRequestHeaderActions: (() { final guardedValue = map['modifyRequestHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointGlobalDeliveryRuleModifyRequestHeaderAction>(guardedValue, (value) => EndpointGlobalDeliveryRuleModifyRequestHeaderAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modifyResponseHeaderActions: (() { final guardedValue = map['modifyResponseHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointGlobalDeliveryRuleModifyResponseHeaderAction>(guardedValue, (value) => EndpointGlobalDeliveryRuleModifyResponseHeaderAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlRedirectAction: (() { final guardedValue = map['urlRedirectAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointGlobalDeliveryRuleUrlRedirectAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRewriteAction: (() { final guardedValue = map['urlRewriteAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointGlobalDeliveryRuleUrlRewriteAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

