// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_connectivity_configuration_response.dart';

/// Result data returned by listActiveConnectivityConfiguration.
class ListActiveConnectivityConfigurationResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;
  /// Gets a page of active connectivity configurations.
  final List<ActiveConnectivityConfigurationResponse>? value;

  /// Creates a new [ListActiveConnectivityConfigurationResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of active connectivity configurations.
  ListActiveConnectivityConfigurationResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?value == null ? null : pulumi.Input.encodeList<ActiveConnectivityConfigurationResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListActiveConnectivityConfigurationResult.fromMap(Map<String, dynamic> map) {
    return ListActiveConnectivityConfigurationResult(
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ActiveConnectivityConfigurationResponse>(map['value'], (value) => ActiveConnectivityConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

