// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response.dart';

/// Settings concerning network injection.
class PropertiesNetworkInjectionResponse {
  /// Network injection configuration
  final pulumi.Input<List<VirtualNetworkPropertiesResponse>>? virtualNetworks;

  /// Creates a new [PropertiesNetworkInjectionResponse].
  /// [virtualNetworks] Network injection configuration
  const PropertiesNetworkInjectionResponse({
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesResponse>, List<Map<String, dynamic>>>(virtualNetworks, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PropertiesNetworkInjectionResponse.fromMap(Map<String, dynamic> map) {
    return PropertiesNetworkInjectionResponse(
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesResponse>(guardedValue, (value) => VirtualNetworkPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
