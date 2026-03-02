// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties.dart';

/// Settings concerning network injection.
class PropertiesNetworkInjection {
  /// Network injection configuration
  final pulumi.Input<List<VirtualNetworkProperties>>? virtualNetworks;

  /// Creates a new [PropertiesNetworkInjection].
  /// [virtualNetworks] Network injection configuration
  PropertiesNetworkInjection({
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkProperties>, List<Map<String, dynamic>>>(virtualNetworks, (value) => pulumi.Input.encodeList<VirtualNetworkProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PropertiesNetworkInjection.fromMap(Map<String, dynamic> map) {
    return PropertiesNetworkInjection(
      virtualNetworks: map['virtualNetworks'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkProperties>(map['virtualNetworks'], (value) => VirtualNetworkProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

