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
  EndpointDeliveryRule({
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
      cacheExpirationAction: map['cacheExpirationAction'] == null ? null : (EndpointDeliveryRuleCacheExpirationAction.fromMap((map['cacheExpirationAction'] as Map).cast<String, dynamic>())).input(),
      cacheKeyQueryStringAction: map['cacheKeyQueryStringAction'] == null ? null : (EndpointDeliveryRuleCacheKeyQueryStringAction.fromMap((map['cacheKeyQueryStringAction'] as Map).cast<String, dynamic>())).input(),
      cookiesConditions: map['cookiesConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleCookiesCondition>(map['cookiesConditions'], (value) => EndpointDeliveryRuleCookiesCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deviceCondition: map['deviceCondition'] == null ? null : (EndpointDeliveryRuleDeviceCondition.fromMap((map['deviceCondition'] as Map).cast<String, dynamic>())).input(),
      httpVersionConditions: map['httpVersionConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleHttpVersionCondition>(map['httpVersionConditions'], (value) => EndpointDeliveryRuleHttpVersionCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      modifyRequestHeaderActions: map['modifyRequestHeaderActions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleModifyRequestHeaderAction>(map['modifyRequestHeaderActions'], (value) => EndpointDeliveryRuleModifyRequestHeaderAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      modifyResponseHeaderActions: map['modifyResponseHeaderActions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleModifyResponseHeaderAction>(map['modifyResponseHeaderActions'], (value) => EndpointDeliveryRuleModifyResponseHeaderAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      order: (map['order'] as int).input(),
      postArgConditions: map['postArgConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRulePostArgCondition>(map['postArgConditions'], (value) => EndpointDeliveryRulePostArgCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      queryStringConditions: map['queryStringConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleQueryStringCondition>(map['queryStringConditions'], (value) => EndpointDeliveryRuleQueryStringCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      remoteAddressConditions: map['remoteAddressConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleRemoteAddressCondition>(map['remoteAddressConditions'], (value) => EndpointDeliveryRuleRemoteAddressCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestBodyConditions: map['requestBodyConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleRequestBodyCondition>(map['requestBodyConditions'], (value) => EndpointDeliveryRuleRequestBodyCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestHeaderConditions: map['requestHeaderConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleRequestHeaderCondition>(map['requestHeaderConditions'], (value) => EndpointDeliveryRuleRequestHeaderCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestMethodCondition: map['requestMethodCondition'] == null ? null : (EndpointDeliveryRuleRequestMethodCondition.fromMap((map['requestMethodCondition'] as Map).cast<String, dynamic>())).input(),
      requestSchemeCondition: map['requestSchemeCondition'] == null ? null : (EndpointDeliveryRuleRequestSchemeCondition.fromMap((map['requestSchemeCondition'] as Map).cast<String, dynamic>())).input(),
      requestUriConditions: map['requestUriConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleRequestUriCondition>(map['requestUriConditions'], (value) => EndpointDeliveryRuleRequestUriCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlFileExtensionConditions: map['urlFileExtensionConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleUrlFileExtensionCondition>(map['urlFileExtensionConditions'], (value) => EndpointDeliveryRuleUrlFileExtensionCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlFileNameConditions: map['urlFileNameConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleUrlFileNameCondition>(map['urlFileNameConditions'], (value) => EndpointDeliveryRuleUrlFileNameCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlPathConditions: map['urlPathConditions'] == null ? null : (pulumi.Input.decodeList<EndpointDeliveryRuleUrlPathCondition>(map['urlPathConditions'], (value) => EndpointDeliveryRuleUrlPathCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlRedirectAction: map['urlRedirectAction'] == null ? null : (EndpointDeliveryRuleUrlRedirectAction.fromMap((map['urlRedirectAction'] as Map).cast<String, dynamic>())).input(),
      urlRewriteAction: map['urlRewriteAction'] == null ? null : (EndpointDeliveryRuleUrlRewriteAction.fromMap((map['urlRewriteAction'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

