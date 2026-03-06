// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties.dart';

/// Settings concerning network injection.
class PropertiesNetworkInjection {
  /// Network injection configuration
  final pulumi.Input<List<VirtualNetworkProperties>>? virtualNetworks;

  /// Creates a new [PropertiesNetworkInjection].
  /// [virtualNetworks] Network injection configuration
  const PropertiesNetworkInjection({
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkProperties>, List<Map<String, dynamic>>>(virtualNetworks, (value) => pulumi.Input.encodeList<VirtualNetworkProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PropertiesNetworkInjection.fromMap(Map<String, dynamic> map) {
    return PropertiesNetworkInjection(
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkProperties>(guardedValue, (value) => VirtualNetworkProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

