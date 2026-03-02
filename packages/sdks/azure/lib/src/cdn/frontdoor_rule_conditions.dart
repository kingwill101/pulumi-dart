// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_conditions_client_port_condition.dart';
import 'frontdoor_rule_conditions_cookies_condition.dart';
import 'frontdoor_rule_conditions_host_name_condition.dart';
import 'frontdoor_rule_conditions_http_version_condition.dart';
import 'frontdoor_rule_conditions_is_device_condition.dart';
import 'frontdoor_rule_conditions_post_args_condition.dart';
import 'frontdoor_rule_conditions_query_string_condition.dart';
import 'frontdoor_rule_conditions_remote_address_condition.dart';
import 'frontdoor_rule_conditions_request_body_condition.dart';
import 'frontdoor_rule_conditions_request_header_condition.dart';
import 'frontdoor_rule_conditions_request_method_condition.dart';
import 'frontdoor_rule_conditions_request_scheme_condition.dart';
import 'frontdoor_rule_conditions_request_uri_condition.dart';
import 'frontdoor_rule_conditions_server_port_condition.dart';
import 'frontdoor_rule_conditions_socket_address_condition.dart';
import 'frontdoor_rule_conditions_ssl_protocol_condition.dart';
import 'frontdoor_rule_conditions_url_file_extension_condition.dart';
import 'frontdoor_rule_conditions_url_filename_condition.dart';
import 'frontdoor_rule_conditions_url_path_condition.dart';

class FrontdoorRuleConditions {
  /// A `client_port_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsClientPortCondition>>? clientPortConditions;
  /// A `cookies_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsCookiesCondition>>? cookiesConditions;
  /// A `host_name_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsHostNameCondition>>? hostNameConditions;
  /// A `http_version_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsHttpVersionCondition>>? httpVersionConditions;
  /// A `is_device_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsIsDeviceCondition>>? isDeviceConditions;
  /// A `post_args_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsPostArgsCondition>>? postArgsConditions;
  /// A `query_string_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsQueryStringCondition>>? queryStringConditions;
  /// A `remote_address_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsRemoteAddressCondition>>? remoteAddressConditions;
  /// A `request_body_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsRequestBodyCondition>>? requestBodyConditions;
  /// A `request_header_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsRequestHeaderCondition>>? requestHeaderConditions;
  /// A `request_method_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsRequestMethodCondition>>? requestMethodConditions;
  /// A `request_scheme_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsRequestSchemeCondition>>? requestSchemeConditions;
  /// A `request_uri_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsRequestUriCondition>>? requestUriConditions;
  /// A `server_port_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsServerPortCondition>>? serverPortConditions;
  /// A `socket_address_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsSocketAddressCondition>>? socketAddressConditions;
  /// A `ssl_protocol_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsSslProtocolCondition>>? sslProtocolConditions;
  /// A `url_file_extension_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsUrlFileExtensionCondition>>? urlFileExtensionConditions;
  /// A `url_filename_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsUrlFilenameCondition>>? urlFilenameConditions;
  /// A `url_path_condition` block as defined below.
  final pulumi.Input<List<FrontdoorRuleConditionsUrlPathCondition>>? urlPathConditions;

  /// Creates a new [FrontdoorRuleConditions].
  /// [clientPortConditions] A `client_port_condition` block as defined below.
  /// [cookiesConditions] A `cookies_condition` block as defined below.
  /// [hostNameConditions] A `host_name_condition` block as defined below.
  /// [httpVersionConditions] A `http_version_condition` block as defined below.
  /// [isDeviceConditions] A `is_device_condition` block as defined below.
  /// [postArgsConditions] A `post_args_condition` block as defined below.
  /// [queryStringConditions] A `query_string_condition` block as defined below.
  /// [remoteAddressConditions] A `remote_address_condition` block as defined below.
  /// [requestBodyConditions] A `request_body_condition` block as defined below.
  /// [requestHeaderConditions] A `request_header_condition` block as defined below.
  /// [requestMethodConditions] A `request_method_condition` block as defined below.
  /// [requestSchemeConditions] A `request_scheme_condition` block as defined below.
  /// [requestUriConditions] A `request_uri_condition` block as defined below.
  /// [serverPortConditions] A `server_port_condition` block as defined below.
  /// [socketAddressConditions] A `socket_address_condition` block as defined below.
  /// [sslProtocolConditions] A `ssl_protocol_condition` block as defined below.
  /// [urlFileExtensionConditions] A `url_file_extension_condition` block as defined below.
  /// [urlFilenameConditions] A `url_filename_condition` block as defined below.
  /// [urlPathConditions] A `url_path_condition` block as defined below.
  FrontdoorRuleConditions({
    this.clientPortConditions,
    this.cookiesConditions,
    this.hostNameConditions,
    this.httpVersionConditions,
    this.isDeviceConditions,
    this.postArgsConditions,
    this.queryStringConditions,
    this.remoteAddressConditions,
    this.requestBodyConditions,
    this.requestHeaderConditions,
    this.requestMethodConditions,
    this.requestSchemeConditions,
    this.requestUriConditions,
    this.serverPortConditions,
    this.socketAddressConditions,
    this.sslProtocolConditions,
    this.urlFileExtensionConditions,
    this.urlFilenameConditions,
    this.urlPathConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPortConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsClientPortCondition>, List<Map<String, dynamic>>>(clientPortConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsClientPortCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cookiesConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsCookiesCondition>, List<Map<String, dynamic>>>(cookiesConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsCookiesCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostNameConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsHostNameCondition>, List<Map<String, dynamic>>>(hostNameConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsHostNameCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpVersionConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsHttpVersionCondition>, List<Map<String, dynamic>>>(httpVersionConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsHttpVersionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isDeviceConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsIsDeviceCondition>, List<Map<String, dynamic>>>(isDeviceConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsIsDeviceCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postArgsConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsPostArgsCondition>, List<Map<String, dynamic>>>(postArgsConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsPostArgsCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStringConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsQueryStringCondition>, List<Map<String, dynamic>>>(queryStringConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsQueryStringCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteAddressConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsRemoteAddressCondition>, List<Map<String, dynamic>>>(remoteAddressConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsRemoteAddressCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestBodyConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsRequestBodyCondition>, List<Map<String, dynamic>>>(requestBodyConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsRequestBodyCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeaderConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsRequestHeaderCondition>, List<Map<String, dynamic>>>(requestHeaderConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsRequestHeaderCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestMethodConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsRequestMethodCondition>, List<Map<String, dynamic>>>(requestMethodConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsRequestMethodCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestSchemeConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsRequestSchemeCondition>, List<Map<String, dynamic>>>(requestSchemeConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsRequestSchemeCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestUriConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsRequestUriCondition>, List<Map<String, dynamic>>>(requestUriConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsRequestUriCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverPortConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsServerPortCondition>, List<Map<String, dynamic>>>(serverPortConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsServerPortCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'socketAddressConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsSocketAddressCondition>, List<Map<String, dynamic>>>(socketAddressConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsSocketAddressCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslProtocolConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsSslProtocolCondition>, List<Map<String, dynamic>>>(sslProtocolConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsSslProtocolCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlFileExtensionConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsUrlFileExtensionCondition>, List<Map<String, dynamic>>>(urlFileExtensionConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsUrlFileExtensionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlFilenameConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsUrlFilenameCondition>, List<Map<String, dynamic>>>(urlFilenameConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsUrlFilenameCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlPathConditions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRuleConditionsUrlPathCondition>, List<Map<String, dynamic>>>(urlPathConditions, (value) => pulumi.Input.encodeList<FrontdoorRuleConditionsUrlPathCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FrontdoorRuleConditions.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditions(
      clientPortConditions: map['clientPortConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsClientPortCondition>(map['clientPortConditions'], (value) => FrontdoorRuleConditionsClientPortCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cookiesConditions: map['cookiesConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsCookiesCondition>(map['cookiesConditions'], (value) => FrontdoorRuleConditionsCookiesCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostNameConditions: map['hostNameConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsHostNameCondition>(map['hostNameConditions'], (value) => FrontdoorRuleConditionsHostNameCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      httpVersionConditions: map['httpVersionConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsHttpVersionCondition>(map['httpVersionConditions'], (value) => FrontdoorRuleConditionsHttpVersionCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isDeviceConditions: map['isDeviceConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsIsDeviceCondition>(map['isDeviceConditions'], (value) => FrontdoorRuleConditionsIsDeviceCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      postArgsConditions: map['postArgsConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsPostArgsCondition>(map['postArgsConditions'], (value) => FrontdoorRuleConditionsPostArgsCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      queryStringConditions: map['queryStringConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsQueryStringCondition>(map['queryStringConditions'], (value) => FrontdoorRuleConditionsQueryStringCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      remoteAddressConditions: map['remoteAddressConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsRemoteAddressCondition>(map['remoteAddressConditions'], (value) => FrontdoorRuleConditionsRemoteAddressCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestBodyConditions: map['requestBodyConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsRequestBodyCondition>(map['requestBodyConditions'], (value) => FrontdoorRuleConditionsRequestBodyCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestHeaderConditions: map['requestHeaderConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsRequestHeaderCondition>(map['requestHeaderConditions'], (value) => FrontdoorRuleConditionsRequestHeaderCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestMethodConditions: map['requestMethodConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsRequestMethodCondition>(map['requestMethodConditions'], (value) => FrontdoorRuleConditionsRequestMethodCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestSchemeConditions: map['requestSchemeConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsRequestSchemeCondition>(map['requestSchemeConditions'], (value) => FrontdoorRuleConditionsRequestSchemeCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestUriConditions: map['requestUriConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsRequestUriCondition>(map['requestUriConditions'], (value) => FrontdoorRuleConditionsRequestUriCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serverPortConditions: map['serverPortConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsServerPortCondition>(map['serverPortConditions'], (value) => FrontdoorRuleConditionsServerPortCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      socketAddressConditions: map['socketAddressConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsSocketAddressCondition>(map['socketAddressConditions'], (value) => FrontdoorRuleConditionsSocketAddressCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sslProtocolConditions: map['sslProtocolConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsSslProtocolCondition>(map['sslProtocolConditions'], (value) => FrontdoorRuleConditionsSslProtocolCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlFileExtensionConditions: map['urlFileExtensionConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsUrlFileExtensionCondition>(map['urlFileExtensionConditions'], (value) => FrontdoorRuleConditionsUrlFileExtensionCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlFilenameConditions: map['urlFilenameConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsUrlFilenameCondition>(map['urlFilenameConditions'], (value) => FrontdoorRuleConditionsUrlFilenameCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlPathConditions: map['urlPathConditions'] == null ? null : (pulumi.Input.decodeList<FrontdoorRuleConditionsUrlPathCondition>(map['urlPathConditions'], (value) => FrontdoorRuleConditionsUrlPathCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

