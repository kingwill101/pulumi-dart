// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_batch_rule_set_rule_conditions_client_port.dart';
import 'frontdoor_batch_rule_set_rule_conditions_device_type.dart';
import 'frontdoor_batch_rule_set_rule_conditions_host_name.dart';
import 'frontdoor_batch_rule_set_rule_conditions_http_version.dart';
import 'frontdoor_batch_rule_set_rule_conditions_post_argument.dart';
import 'frontdoor_batch_rule_set_rule_conditions_query_string.dart';
import 'frontdoor_batch_rule_set_rule_conditions_remote_address.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_body.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_cooky.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_file_extension.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_filename.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_header.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_method.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_path.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_scheme.dart';
import 'frontdoor_batch_rule_set_rule_conditions_request_url.dart';
import 'frontdoor_batch_rule_set_rule_conditions_server_port.dart';
import 'frontdoor_batch_rule_set_rule_conditions_socket_address.dart';
import 'frontdoor_batch_rule_set_rule_conditions_ssl_protocol.dart';

class FrontdoorBatchRuleSetRuleConditions {
  /// One or more `clientPort` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsClientPort>?>? clientPorts;
  /// One or more `deviceType` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsDeviceType>?>? deviceTypes;
  /// One or more `hostName` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsHostName>?>? hostNames;
  /// One or more `httpVersion` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsHttpVersion>?>? httpVersions;
  /// One or more `postArgument` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsPostArgument>?>? postArguments;
  /// One or more `queryString` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsQueryString>?>? queryStrings;
  /// One or more `remoteAddress` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRemoteAddress>?>? remoteAddresses;
  /// One or more `requestBody` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestBody>?>? requestBodies;
  /// One or more `requestCookies` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestCooky>?>? requestCookies;
  /// One or more `requestFileExtension` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestFileExtension>?>? requestFileExtensions;
  /// One or more `requestFilename` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestFilename>?>? requestFilenames;
  /// One or more `requestHeader` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestHeader>?>? requestHeaders;
  /// One or more `requestMethod` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestMethod>?>? requestMethods;
  /// One or more `requestPath` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestPath>?>? requestPaths;
  /// One or more `requestScheme` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestScheme>?>? requestSchemes;
  /// One or more `requestUrl` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsRequestUrl>?>? requestUrls;
  /// One or more `serverPort` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsServerPort>?>? serverPorts;
  /// One or more `socketAddress` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsSocketAddress>?>? socketAddresses;
  /// One or more `sslProtocol` blocks as defined below.
  final pulumi.Input<List<FrontdoorBatchRuleSetRuleConditionsSslProtocol>?>? sslProtocols;

  /// Creates a new [FrontdoorBatchRuleSetRuleConditions].
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
  const FrontdoorBatchRuleSetRuleConditions({
    this.clientPorts,
    this.deviceTypes,
    this.hostNames,
    this.httpVersions,
    this.postArguments,
    this.queryStrings,
    this.remoteAddresses,
    this.requestBodies,
    this.requestCookies,
    this.requestFileExtensions,
    this.requestFilenames,
    this.requestHeaders,
    this.requestMethods,
    this.requestPaths,
    this.requestSchemes,
    this.requestUrls,
    this.serverPorts,
    this.socketAddresses,
    this.sslProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPorts': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsClientPort>, List<Map<String, dynamic>>>(clientPorts, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsClientPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceTypes': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsDeviceType>, List<Map<String, dynamic>>>(deviceTypes, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsDeviceType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostNames': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsHostName>, List<Map<String, dynamic>>>(hostNames, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsHostName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpVersions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsHttpVersion>, List<Map<String, dynamic>>>(httpVersions, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsHttpVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postArguments': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsPostArgument>, List<Map<String, dynamic>>>(postArguments, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsPostArgument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStrings': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsQueryString>, List<Map<String, dynamic>>>(queryStrings, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsQueryString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteAddresses': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRemoteAddress>, List<Map<String, dynamic>>>(remoteAddresses, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRemoteAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestBodies': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestBody>, List<Map<String, dynamic>>>(requestBodies, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestCookies': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestCooky>, List<Map<String, dynamic>>>(requestCookies, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestCooky, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestFileExtensions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestFileExtension>, List<Map<String, dynamic>>>(requestFileExtensions, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestFileExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestFilenames': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestFilename>, List<Map<String, dynamic>>>(requestFilenames, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestFilename, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestMethods': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestMethod>, List<Map<String, dynamic>>>(requestMethods, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestMethod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestPaths': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestPath>, List<Map<String, dynamic>>>(requestPaths, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestSchemes': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestScheme>, List<Map<String, dynamic>>>(requestSchemes, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestScheme, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestUrls': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsRequestUrl>, List<Map<String, dynamic>>>(requestUrls, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsRequestUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverPorts': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsServerPort>, List<Map<String, dynamic>>>(serverPorts, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsServerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'socketAddresses': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsSocketAddress>, List<Map<String, dynamic>>>(socketAddresses, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsSocketAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslProtocols': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBatchRuleSetRuleConditionsSslProtocol>, List<Map<String, dynamic>>>(sslProtocols, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRuleConditionsSslProtocol, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FrontdoorBatchRuleSetRuleConditions.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleConditions(
      clientPorts: (() { final guardedValue = map['clientPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsClientPort>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsClientPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deviceTypes: (() { final guardedValue = map['deviceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsDeviceType>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsDeviceType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsHostName>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsHostName.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpVersions: (() { final guardedValue = map['httpVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsHttpVersion>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsHttpVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      postArguments: (() { final guardedValue = map['postArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsPostArgument>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsPostArgument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryStrings: (() { final guardedValue = map['queryStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsQueryString>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsQueryString.fromMap((value as Map).cast<String, dynamic>()))); })(),
      remoteAddresses: (() { final guardedValue = map['remoteAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRemoteAddress>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRemoteAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestBodies: (() { final guardedValue = map['requestBodies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestBody>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestBody.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestCookies: (() { final guardedValue = map['requestCookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestCooky>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestCooky.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestFileExtensions: (() { final guardedValue = map['requestFileExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestFileExtension>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestFileExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestFilenames: (() { final guardedValue = map['requestFilenames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestFilename>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestFilename.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestHeader>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestMethods: (() { final guardedValue = map['requestMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestMethod>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestMethod.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestPaths: (() { final guardedValue = map['requestPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestPath>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestSchemes: (() { final guardedValue = map['requestSchemes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestScheme>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestScheme.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestUrls: (() { final guardedValue = map['requestUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsRequestUrl>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsRequestUrl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serverPorts: (() { final guardedValue = map['serverPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsServerPort>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsServerPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      socketAddresses: (() { final guardedValue = map['socketAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsSocketAddress>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsSocketAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sslProtocols: (() { final guardedValue = map['sslProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRuleConditionsSslProtocol>(guardedValue, (value) => FrontdoorBatchRuleSetRuleConditionsSslProtocol.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
