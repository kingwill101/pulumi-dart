// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_virtual_port_params.dart';

class NetworkVirtualPort {
  /// Defines parameters for the virtual port in the port group.
  final pulumi.Input<NetworkVirtualPortParams>? params;

  /// Creates a new [NetworkVirtualPort].
  /// [params] Defines parameters for the virtual port in the port group.
  const NetworkVirtualPort({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?pulumi.Input.mapOptionalInputValue<NetworkVirtualPortParams, Map<String, dynamic>>(params, (value) => value.toMap()),
    };
  }

  factory NetworkVirtualPort.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualPort(
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkVirtualPortParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
