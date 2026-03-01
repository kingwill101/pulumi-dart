// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response.dart';

/// Settings concerning network injection.
class PropertiesResponseNetworkInjection {
  /// Network injection configuration
  final List<VirtualNetworkPropertiesResponse>? virtualNetworks;

  /// Creates a new [PropertiesResponseNetworkInjection].
  /// [virtualNetworks] Network injection configuration
  PropertiesResponseNetworkInjection({
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworks': ?virtualNetworks == null ? null : pulumi.Input.encodeList<VirtualNetworkPropertiesResponse, Map<String, dynamic>>(virtualNetworks!, (value) => value.toMap()),
    };
  }

  factory PropertiesResponseNetworkInjection.fromMap(Map<String, dynamic> map) {
    return PropertiesResponseNetworkInjection(
      virtualNetworks: map['virtualNetworks'] == null ? null : pulumi.Input.decodeList<VirtualNetworkPropertiesResponse>(map['virtualNetworks'], (value) => VirtualNetworkPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

