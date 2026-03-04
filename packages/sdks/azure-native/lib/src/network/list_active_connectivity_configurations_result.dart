// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_connectivity_configuration_response.dart';

/// Result data returned by listActiveConnectivityConfigurations.
class ListActiveConnectivityConfigurationsResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;

  /// Gets a page of active connectivity configurations.
  final List<ActiveConnectivityConfigurationResponse>? value;

  /// Creates a new [ListActiveConnectivityConfigurationsResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of active connectivity configurations.
  ListActiveConnectivityConfigurationsResult({this.skipToken, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ActiveConnectivityConfigurationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListActiveConnectivityConfigurationsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListActiveConnectivityConfigurationsResult(
      skipToken: (() {
        final guardedValue = map['skipToken'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ActiveConnectivityConfigurationResponse>(
          guardedValue,
          (value) => ActiveConnectivityConfigurationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
