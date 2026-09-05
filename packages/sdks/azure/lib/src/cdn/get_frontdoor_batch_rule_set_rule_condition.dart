// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_batch_rule_set_rule_condition_client_port.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_device_type.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_host_name.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_http_version.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_post_argument.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_query_string.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_remote_address.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_body.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_cooky.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_file_extension.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_filename.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_header.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_method.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_path.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_scheme.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_request_url.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_server_port.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_socket_address.dart';
import 'get_frontdoor_batch_rule_set_rule_condition_ssl_protocol.dart';

class GetFrontdoorBatchRuleSetRuleCondition {
  /// One or more `clientPort` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionClientPort>> clientPorts;
  /// One or more `deviceType` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionDeviceType>> deviceTypes;
  /// One or more `hostName` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionHostName>> hostNames;
  /// One or more `httpVersion` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionHttpVersion>> httpVersions;
  /// One or more `postArgument` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionPostArgument>> postArguments;
  /// One or more `queryString` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionQueryString>> queryStrings;
  /// One or more `remoteAddress` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRemoteAddress>> remoteAddresses;
  /// One or more `requestBody` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestBody>> requestBodies;
  /// One or more `requestCookies` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestCooky>> requestCookies;
  /// One or more `requestFileExtension` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestFileExtension>> requestFileExtensions;
  /// One or more `requestFilename` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestFilename>> requestFilenames;
  /// One or more `requestHeader` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestHeader>> requestHeaders;
  /// One or more `requestMethod` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestMethod>> requestMethods;
  /// One or more `requestPath` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestPath>> requestPaths;
  /// One or more `requestScheme` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestScheme>> requestSchemes;
  /// One or more `requestUrl` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionRequestUrl>> requestUrls;
  /// One or more `serverPort` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionServerPort>> serverPorts;
  /// One or more `socketAddress` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionSocketAddress>> socketAddresses;
  /// One or more `sslProtocol` blocks as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleConditionSslProtocol>> sslProtocols;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleCondition].
  /// [clientPorts] One or more `clientPort` blocks as defined below.
  /// [deviceTypes] One or more `deviceType` blocks as defined below.
  /// [hostNames] One or more `hostName` blocks as defined below.
  /// [httpVersions] One or more `httpVersion` blocks as defined below.
  /// [postArguments] One or more `postArgument` blocks as defined below.
  /// [queryStrings] One or more `queryString` blocks as defined below.
  /// [remoteAddresses] One or more `remoteAddress` blocks as defined below.
  /// [requestBodies] One or more `requestBody` blocks as defined below.
  /// [requestCookies] One or more `requestCookies` blocks as defined below.
  /// [requestFileExtensions] One or more `requestFileExtension` blocks as defined below.
  /// [requestFilenames] One or more `requestFilename` blocks as defined below.
  /// [requestHeaders] One or more `requestHeader` blocks as defined below.
  /// [requestMethods] One or more `requestMethod` blocks as defined below.
  /// [requestPaths] One or more `requestPath` blocks as defined below.
  /// [requestSchemes] One or more `requestScheme` blocks as defined below.
  /// [requestUrls] One or more `requestUrl` blocks as defined below.
  /// [serverPorts] One or more `serverPort` blocks as defined below.
  /// [socketAddresses] One or more `socketAddress` blocks as defined below.
  /// [sslProtocols] One or more `sslProtocol` blocks as defined below.
  const GetFrontdoorBatchRuleSetRuleCondition({
    required this.clientPorts,
    required this.deviceTypes,
    required this.hostNames,
    required this.httpVersions,
    required this.postArguments,
    required this.queryStrings,
    required this.remoteAddresses,
    required this.requestBodies,
    required this.requestCookies,
    required this.requestFileExtensions,
    required this.requestFilenames,
    required this.requestHeaders,
    required this.requestMethods,
    required this.requestPaths,
    required this.requestSchemes,
    required this.requestUrls,
    required this.serverPorts,
    required this.socketAddresses,
    required this.sslProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPorts': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionClientPort>, List<Map<String, dynamic>>>(clientPorts, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionClientPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceTypes': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionDeviceType>, List<Map<String, dynamic>>>(deviceTypes, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionDeviceType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostNames': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionHostName>, List<Map<String, dynamic>>>(hostNames, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionHostName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpVersions': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionHttpVersion>, List<Map<String, dynamic>>>(httpVersions, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionHttpVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postArguments': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionPostArgument>, List<Map<String, dynamic>>>(postArguments, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionPostArgument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStrings': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionQueryString>, List<Map<String, dynamic>>>(queryStrings, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionQueryString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteAddresses': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRemoteAddress>, List<Map<String, dynamic>>>(remoteAddresses, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRemoteAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestBodies': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestBody>, List<Map<String, dynamic>>>(requestBodies, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestCookies': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestCooky>, List<Map<String, dynamic>>>(requestCookies, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestCooky, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestFileExtensions': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestFileExtension>, List<Map<String, dynamic>>>(requestFileExtensions, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestFileExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestFilenames': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestFilename>, List<Map<String, dynamic>>>(requestFilenames, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestFilename, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeaders': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestMethods': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestMethod>, List<Map<String, dynamic>>>(requestMethods, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestMethod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestPaths': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestPath>, List<Map<String, dynamic>>>(requestPaths, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestSchemes': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestScheme>, List<Map<String, dynamic>>>(requestSchemes, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestScheme, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestUrls': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionRequestUrl>, List<Map<String, dynamic>>>(requestUrls, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionRequestUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverPorts': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionServerPort>, List<Map<String, dynamic>>>(serverPorts, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionServerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'socketAddresses': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionSocketAddress>, List<Map<String, dynamic>>>(socketAddresses, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionSocketAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslProtocols': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleConditionSslProtocol>, List<Map<String, dynamic>>>(sslProtocols, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleConditionSslProtocol, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFrontdoorBatchRuleSetRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleCondition(
      clientPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionClientPort>(map['clientPorts']!, (value) => GetFrontdoorBatchRuleSetRuleConditionClientPort.fromMap((value as Map).cast<String, dynamic>()))),
      deviceTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionDeviceType>(map['deviceTypes']!, (value) => GetFrontdoorBatchRuleSetRuleConditionDeviceType.fromMap((value as Map).cast<String, dynamic>()))),
      hostNames: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionHostName>(map['hostNames']!, (value) => GetFrontdoorBatchRuleSetRuleConditionHostName.fromMap((value as Map).cast<String, dynamic>()))),
      httpVersions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionHttpVersion>(map['httpVersions']!, (value) => GetFrontdoorBatchRuleSetRuleConditionHttpVersion.fromMap((value as Map).cast<String, dynamic>()))),
      postArguments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionPostArgument>(map['postArguments']!, (value) => GetFrontdoorBatchRuleSetRuleConditionPostArgument.fromMap((value as Map).cast<String, dynamic>()))),
      queryStrings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionQueryString>(map['queryStrings']!, (value) => GetFrontdoorBatchRuleSetRuleConditionQueryString.fromMap((value as Map).cast<String, dynamic>()))),
      remoteAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRemoteAddress>(map['remoteAddresses']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRemoteAddress.fromMap((value as Map).cast<String, dynamic>()))),
      requestBodies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestBody>(map['requestBodies']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestBody.fromMap((value as Map).cast<String, dynamic>()))),
      requestCookies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestCooky>(map['requestCookies']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestCooky.fromMap((value as Map).cast<String, dynamic>()))),
      requestFileExtensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestFileExtension>(map['requestFileExtensions']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestFileExtension.fromMap((value as Map).cast<String, dynamic>()))),
      requestFilenames: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestFilename>(map['requestFilenames']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestFilename.fromMap((value as Map).cast<String, dynamic>()))),
      requestHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestHeader>(map['requestHeaders']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestHeader.fromMap((value as Map).cast<String, dynamic>()))),
      requestMethods: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestMethod>(map['requestMethods']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestMethod.fromMap((value as Map).cast<String, dynamic>()))),
      requestPaths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestPath>(map['requestPaths']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestPath.fromMap((value as Map).cast<String, dynamic>()))),
      requestSchemes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestScheme>(map['requestSchemes']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestScheme.fromMap((value as Map).cast<String, dynamic>()))),
      requestUrls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionRequestUrl>(map['requestUrls']!, (value) => GetFrontdoorBatchRuleSetRuleConditionRequestUrl.fromMap((value as Map).cast<String, dynamic>()))),
      serverPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionServerPort>(map['serverPorts']!, (value) => GetFrontdoorBatchRuleSetRuleConditionServerPort.fromMap((value as Map).cast<String, dynamic>()))),
      socketAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionSocketAddress>(map['socketAddresses']!, (value) => GetFrontdoorBatchRuleSetRuleConditionSocketAddress.fromMap((value as Map).cast<String, dynamic>()))),
      sslProtocols: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleConditionSslProtocol>(map['sslProtocols']!, (value) => GetFrontdoorBatchRuleSetRuleConditionSslProtocol.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
