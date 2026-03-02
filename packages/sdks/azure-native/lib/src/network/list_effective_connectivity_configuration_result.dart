// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'effective_connectivity_configuration_response.dart';

/// Result data returned by listEffectiveConnectivityConfiguration.
class ListEffectiveConnectivityConfigurationResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;
  /// Gets a page of NetworkManagerEffectiveConnectivityConfiguration
  final List<EffectiveConnectivityConfigurationResponse>? value;

  /// Creates a new [ListEffectiveConnectivityConfigurationResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of NetworkManagerEffectiveConnectivityConfiguration
  ListEffectiveConnectivityConfigurationResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?value == null ? null : pulumi.Input.encodeList<EffectiveConnectivityConfigurationResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListEffectiveConnectivityConfigurationResult.fromMap(Map<String, dynamic> map) {
    return ListEffectiveConnectivityConfigurationResult(
      skipToken: map['skipToken'] == null ? null : map['skipToken']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<EffectiveConnectivityConfigurationResponse>(map['value']!, (value) => EffectiveConnectivityConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

