// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_monitor_test_configuration_http_configuration_request_header.dart';

class NetworkConnectionMonitorTestConfigurationHttpConfiguration {
  /// The HTTP method for the HTTP request. Possible values are `Get` and `Post`. Defaults to `Get`.
  final pulumi.Input<String>? method;
  /// The path component of the URI. It only accepts the absolute path.
  final pulumi.Input<String>? path;
  /// The port for the HTTP connection.
  final pulumi.Input<int>? port;
  /// Should HTTPS be preferred over HTTP in cases where the choice is not explicit? Defaults to `false`.
  final pulumi.Input<bool>? preferHttps;
  /// A `request_header` block as defined below.
  final pulumi.Input<List<NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader>>? requestHeaders;
  /// The HTTP status codes to consider successful. For instance, `2xx`, `301-304` and `418`.
  final pulumi.Input<List<String>>? validStatusCodeRanges;

  /// Creates a new [NetworkConnectionMonitorTestConfigurationHttpConfiguration].
  /// [method] The HTTP method for the HTTP request. Possible values are `Get` and `Post`. Defaults to `Get`.
  /// [path] The path component of the URI. It only accepts the absolute path.
  /// [port] The port for the HTTP connection.
  /// [preferHttps] Should HTTPS be preferred over HTTP in cases where the choice is not explicit? Defaults to `false`.
  /// [requestHeaders] A `request_header` block as defined below.
  /// [validStatusCodeRanges] The HTTP status codes to consider successful. For instance, `2xx`, `301-304` and `418`.
  NetworkConnectionMonitorTestConfigurationHttpConfiguration({
    this.method,
    this.path,
    this.port,
    this.preferHttps,
    this.requestHeaders,
    this.validStatusCodeRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'path': ?path,
      'port': ?port,
      'preferHttps': ?preferHttps,
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validStatusCodeRanges': ?validStatusCodeRanges,
    };
  }

  factory NetworkConnectionMonitorTestConfigurationHttpConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestConfigurationHttpConfiguration(
      method: map['method'] == null ? null : (map['method'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      preferHttps: map['preferHttps'] == null ? null : (map['preferHttps'] as bool).input(),
      requestHeaders: map['requestHeaders'] == null ? null : (pulumi.Input.decodeList<NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader>(map['requestHeaders'], (value) => NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validStatusCodeRanges: map['validStatusCodeRanges'] == null ? null : ((map['validStatusCodeRanges'] as List).cast<String>()).input(),
    );
  }
}

