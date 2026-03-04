// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'effective_virtual_network_response.dart';

/// Result data returned by listEffectiveVirtualNetworkByNetworkManager.
class ListEffectiveVirtualNetworkByNetworkManagerResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;

  /// Gets a page of EffectiveVirtualNetwork
  final List<EffectiveVirtualNetworkResponse>? value;

  /// Creates a new [ListEffectiveVirtualNetworkByNetworkManagerResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of EffectiveVirtualNetwork
  ListEffectiveVirtualNetworkByNetworkManagerResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          EffectiveVirtualNetworkResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListEffectiveVirtualNetworkByNetworkManagerResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListEffectiveVirtualNetworkByNetworkManagerResult(
      skipToken: (() {
        final guardedValue = map['skipToken'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<EffectiveVirtualNetworkResponse>(
          guardedValue,
          (value) => EffectiveVirtualNetworkResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
