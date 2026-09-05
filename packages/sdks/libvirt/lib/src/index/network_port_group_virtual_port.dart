// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_port_group_virtual_port_params.dart';

class NetworkPortGroupVirtualPort {
  /// Defines parameters for the virtual port in the port group.
  final pulumi.Input<NetworkPortGroupVirtualPortParams?>? params;

  /// Creates a new [NetworkPortGroupVirtualPort].
  /// [params] Defines parameters for the virtual port in the port group.
  const NetworkPortGroupVirtualPort({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?pulumi.Input.mapOptionalInputValue<NetworkPortGroupVirtualPortParams, Map<String, dynamic>>(params, (value) => value.toMap()),
    };
  }

  factory NetworkPortGroupVirtualPort.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVirtualPort(
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPortGroupVirtualPortParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
