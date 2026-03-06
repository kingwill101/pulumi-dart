// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_delivery_rule_cache_expiration_action.dart';
import 'endpoint_delivery_rule_cache_key_query_string_action.dart';
import 'endpoint_delivery_rule_cookies_condition.dart';
import 'endpoint_delivery_rule_device_condition.dart';
import 'endpoint_delivery_rule_http_version_condition.dart';
import 'endpoint_delivery_rule_modify_request_header_action.dart';
import 'endpoint_delivery_rule_modify_response_header_action.dart';
import 'endpoint_delivery_rule_post_arg_condition.dart';
import 'endpoint_delivery_rule_query_string_condition.dart';
import 'endpoint_delivery_rule_remote_address_condition.dart';
import 'endpoint_delivery_rule_request_body_condition.dart';
import 'endpoint_delivery_rule_request_header_condition.dart';
import 'endpoint_delivery_rule_request_method_condition.dart';
import 'endpoint_delivery_rule_request_scheme_condition.dart';
import 'endpoint_delivery_rule_request_uri_condition.dart';
import 'endpoint_delivery_rule_url_file_extension_condition.dart';
import 'endpoint_delivery_rule_url_file_name_condition.dart';
import 'endpoint_delivery_rule_url_path_condition.dart';
import 'endpoint_delivery_rule_url_redirect_action.dart';
import 'endpoint_delivery_rule_url_rewrite_action.dart';

class EndpointDeliveryRule {
  /// A `cache_expiration_action` block as defined above.
  final pulumi.Input<EndpointDeliveryRuleCacheExpirationAction>? cacheExpirationAction;
  /// A `cache_key_query_string_action` block as defined above.
  final pulumi.Input<EndpointDeliveryRuleCacheKeyQueryStringAction>? cacheKeyQueryStringAction;
  /// A `cookies_condition` block as defined above.
  final pulumi.Input<List<EndpointDeliveryRuleCookiesCondition>>? cookiesConditions;
  /// A `device_condition` block as defined below.
  final pulumi.Input<EndpointDeliveryRuleDeviceCondition>? deviceCondition;
  /// A `http_version_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleHttpVersionCondition>>? httpVersionConditions;
  /// A `modify_request_header_action` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleModifyRequestHeaderAction>>? modifyRequestHeaderActions;
  /// A `modify_response_header_action` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleModifyResponseHeaderAction>>? modifyResponseHeaderActions;
  /// The Name which should be used for this Delivery Rule.
  final pulumi.Input<String> name;
  /// The order used for this rule. The order values should be sequential and begin at `1`.
  final pulumi.Input<int> order;
  /// A `post_arg_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRulePostArgCondition>>? postArgConditions;
  /// A `query_string_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleQueryStringCondition>>? queryStringConditions;
  /// A `remote_address_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleRemoteAddressCondition>>? remoteAddressConditions;
  /// A `request_body_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleRequestBodyCondition>>? requestBodyConditions;
  /// A `request_header_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleRequestHeaderCondition>>? requestHeaderConditions;
  /// A `request_method_condition` block as defined below.
  final pulumi.Input<EndpointDeliveryRuleRequestMethodCondition>? requestMethodCondition;
  /// A `request_scheme_condition` block as defined below.
  final pulumi.Input<EndpointDeliveryRuleRequestSchemeCondition>? requestSchemeCondition;
  /// A `request_uri_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleRequestUriCondition>>? requestUriConditions;
  /// A `url_file_extension_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleUrlFileExtensionCondition>>? urlFileExtensionConditions;
  /// A `url_file_name_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleUrlFileNameCondition>>? urlFileNameConditions;
  /// A `url_path_condition` block as defined below.
  final pulumi.Input<List<EndpointDeliveryRuleUrlPathCondition>>? urlPathConditions;
  /// A `url_redirect_action` block as defined below.
  final pulumi.Input<EndpointDeliveryRuleUrlRedirectAction>? urlRedirectAction;
  /// A `url_rewrite_action` block as defined below.
  final pulumi.Input<EndpointDeliveryRuleUrlRewriteAction>? urlRewriteAction;

  /// Creates a new [EndpointDeliveryRule].
  /// [cacheExpirationAction] A `cache_expiration_action` block as defined above.
  /// [cacheKeyQueryStringAction] A `cache_key_query_string_action` block as defined above.
  /// [cookiesConditions] A `cookies_condition` block as defined above.
  /// [deviceCondition] A `device_condition` block as defined below.
  /// [httpVersionConditions] A `http_version_condition` block as defined below.
  /// [modifyRequestHeaderActions] A `modify_request_header_action` block as defined below.
  /// [modifyResponseHeaderActions] A `modify_response_header_action` block as defined below.
  /// [name] The Name which should be used for this Delivery Rule.
  /// [order] The order used for this rule. The order values should be sequential and begin at `1`.
  /// [postArgConditions] A `post_arg_condition` block as defined below.
  /// [queryStringConditions] A `query_string_condition` block as defined below.
  /// [remoteAddressConditions] A `remote_address_condition` block as defined below.
  /// [requestBodyConditions] A `request_body_condition` block as defined below.
  /// [requestHeaderConditions] A `request_header_condition` block as defined below.
  /// [requestMethodCondition] A `request_method_condition` block as defined below.
  /// [requestSchemeCondition] A `request_scheme_condition` block as defined below.
  /// [requestUriConditions] A `request_uri_condition` block as defined below.
  /// [urlFileExtensionConditions] A `url_file_extension_condition` block as defined below.
  /// [urlFileNameConditions] A `url_file_name_condition` block as defined below.
  /// [urlPathConditions] A `url_path_condition` block as defined below.
  /// [urlRedirectAction] A `url_redirect_action` block as defined below.
  /// [urlRewriteAction] A `url_rewrite_action` block as defined below.
  const EndpointDeliveryRule({
    this.cacheExpirationAction,
    this.cacheKeyQueryStringAction,
    this.cookiesConditions,
    this.deviceCondition,
    this.httpVersionConditions,
    this.modifyRequestHeaderActions,
    this.modifyResponseHeaderActions,
    required this.name,
    required this.order,
    this.postArgConditions,
    this.queryStringConditions,
    this.remoteAddressConditions,
    this.requestBodyConditions,
    this.requestHeaderConditions,
    this.requestMethodCondition,
    this.requestSchemeCondition,
    this.requestUriConditions,
    this.urlFileExtensionConditions,
    this.urlFileNameConditions,
    this.urlPathConditions,
    this.urlRedirectAction,
    this.urlRewriteAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheExpirationAction': ?pulumi.Input.mapOptionalInputValue<EndpointDeliveryRuleCacheExpirationAction, Map<String, dynamic>>(cacheExpirationAction, (value) => value.toMap()),
      'cacheKeyQueryStringAction': ?pulumi.Input.mapOptionalInputValue<EndpointDeliveryRuleCacheKeyQueryStringAction, Map<String, dynamic>>(cacheKeyQueryStringAction, (value) => value.toMap()),
      'cookiesConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleCookiesCondition>, List<Map<String, dynamic>>>(cookiesConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleCookiesCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceCondition': ?pulumi.Input.mapOptionalInputValue<EndpointDeliveryRuleDeviceCondition, Map<String, dynamic>>(deviceCondition, (value) => value.toMap()),
      'httpVersionConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleHttpVersionCondition>, List<Map<String, dynamic>>>(httpVersionConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleHttpVersionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifyRequestHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleModifyRequestHeaderAction>, List<Map<String, dynamic>>>(modifyRequestHeaderActions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleModifyRequestHeaderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifyResponseHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleModifyResponseHeaderAction>, List<Map<String, dynamic>>>(modifyResponseHeaderActions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleModifyResponseHeaderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'order': order,
      'postArgConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRulePostArgCondition>, List<Map<String, dynamic>>>(postArgConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRulePostArgCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStringConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleQueryStringCondition>, List<Map<String, dynamic>>>(queryStringConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleQueryStringCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteAddressConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleRemoteAddressCondition>, List<Map<String, dynamic>>>(remoteAddressConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleRemoteAddressCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestBodyConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleRequestBodyCondition>, List<Map<String, dynamic>>>(requestBodyConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleRequestBodyCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeaderConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleRequestHeaderCondition>, List<Map<String, dynamic>>>(requestHeaderConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleRequestHeaderCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestMethodCondition': ?pulumi.Input.mapOptionalInputValue<EndpointDeliveryRuleRequestMethodCondition, Map<String, dynamic>>(requestMethodCondition, (value) => value.toMap()),
      'requestSchemeCondition': ?pulumi.Input.mapOptionalInputValue<EndpointDeliveryRuleRequestSchemeCondition, Map<String, dynamic>>(requestSchemeCondition, (value) => value.toMap()),
      'requestUriConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleRequestUriCondition>, List<Map<String, dynamic>>>(requestUriConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleRequestUriCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlFileExtensionConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleUrlFileExtensionCondition>, List<Map<String, dynamic>>>(urlFileExtensionConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleUrlFileExtensionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlFileNameConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleUrlFileNameCondition>, List<Map<String, dynamic>>>(urlFileNameConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleUrlFileNameCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlPathConditions': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRuleUrlPathCondition>, List<Map<String, dynamic>>>(urlPathConditions, (value) => pulumi.Input.encodeList<EndpointDeliveryRuleUrlPathCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlRedirectAction': ?pulumi.Input.mapOptionalInputValue<EndpointDeliveryRuleUrlRedirectAction, Map<String, dynamic>>(urlRedirectAction, (value) => value.toMap()),
      'urlRewriteAction': ?pulumi.Input.mapOptionalInputValue<EndpointDeliveryRuleUrlRewriteAction, Map<String, dynamic>>(urlRewriteAction, (value) => value.toMap()),
    };
  }

  factory EndpointDeliveryRule.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRule(
      cacheExpirationAction: (() { final guardedValue = map['cacheExpirationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointDeliveryRuleCacheExpirationAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheKeyQueryStringAction: (() { final guardedValue = map['cacheKeyQueryStringAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointDeliveryRuleCacheKeyQueryStringAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cookiesConditions: (() { final guardedValue = map['cookiesConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleCookiesCondition>(guardedValue, (value) => EndpointDeliveryRuleCookiesCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceCondition: (() { final guardedValue = map['deviceCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointDeliveryRuleDeviceCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpVersionConditions: (() { final guardedValue = map['httpVersionConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleHttpVersionCondition>(guardedValue, (value) => EndpointDeliveryRuleHttpVersionCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modifyRequestHeaderActions: (() { final guardedValue = map['modifyRequestHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleModifyRequestHeaderAction>(guardedValue, (value) => EndpointDeliveryRuleModifyRequestHeaderAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modifyResponseHeaderActions: (() { final guardedValue = map['modifyResponseHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleModifyResponseHeaderAction>(guardedValue, (value) => EndpointDeliveryRuleModifyResponseHeaderAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      order: pulumi.Input.fromValue(map['order'] as int),
      postArgConditions: (() { final guardedValue = map['postArgConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRulePostArgCondition>(guardedValue, (value) => EndpointDeliveryRulePostArgCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryStringConditions: (() { final guardedValue = map['queryStringConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleQueryStringCondition>(guardedValue, (value) => EndpointDeliveryRuleQueryStringCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      remoteAddressConditions: (() { final guardedValue = map['remoteAddressConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleRemoteAddressCondition>(guardedValue, (value) => EndpointDeliveryRuleRemoteAddressCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestBodyConditions: (() { final guardedValue = map['requestBodyConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleRequestBodyCondition>(guardedValue, (value) => EndpointDeliveryRuleRequestBodyCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestHeaderConditions: (() { final guardedValue = map['requestHeaderConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleRequestHeaderCondition>(guardedValue, (value) => EndpointDeliveryRuleRequestHeaderCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestMethodCondition: (() { final guardedValue = map['requestMethodCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointDeliveryRuleRequestMethodCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestSchemeCondition: (() { final guardedValue = map['requestSchemeCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointDeliveryRuleRequestSchemeCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestUriConditions: (() { final guardedValue = map['requestUriConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleRequestUriCondition>(guardedValue, (value) => EndpointDeliveryRuleRequestUriCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlFileExtensionConditions: (() { final guardedValue = map['urlFileExtensionConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleUrlFileExtensionCondition>(guardedValue, (value) => EndpointDeliveryRuleUrlFileExtensionCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlFileNameConditions: (() { final guardedValue = map['urlFileNameConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleUrlFileNameCondition>(guardedValue, (value) => EndpointDeliveryRuleUrlFileNameCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlPathConditions: (() { final guardedValue = map['urlPathConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDeliveryRuleUrlPathCondition>(guardedValue, (value) => EndpointDeliveryRuleUrlPathCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlRedirectAction: (() { final guardedValue = map['urlRedirectAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointDeliveryRuleUrlRedirectAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRewriteAction: (() { final guardedValue = map['urlRewriteAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointDeliveryRuleUrlRewriteAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

