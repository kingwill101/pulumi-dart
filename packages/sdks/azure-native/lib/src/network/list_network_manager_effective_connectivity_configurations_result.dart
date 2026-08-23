// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'effective_connectivity_configurationlist_network_manager_effective_connectivity_configurations_response.dart';

/// Result data returned by listNetworkManagerEffectiveConnectivityConfigurations.
class ListNetworkManagerEffectiveConnectivityConfigurationsResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;
  /// Gets a page of NetworkManagerEffectiveConnectivityConfiguration
  final List<EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse>? value;

  /// Creates a new [ListNetworkManagerEffectiveConnectivityConfigurationsResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of NetworkManagerEffectiveConnectivityConfiguration
  const ListNetworkManagerEffectiveConnectivityConfigurationsResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListNetworkManagerEffectiveConnectivityConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return ListNetworkManagerEffectiveConnectivityConfigurationsResult(
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse>(guardedValue, (value) => EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
