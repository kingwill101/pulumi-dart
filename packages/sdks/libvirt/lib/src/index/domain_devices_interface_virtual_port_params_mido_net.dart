// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceVirtualPortParamsMidoNet {
  /// Sets the interface ID for the MidoNet virtual port parameters.
  final pulumi.Input<String>? interfaceId;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsMidoNet].
  /// [interfaceId] Sets the interface ID for the MidoNet virtual port parameters.
  const DomainDevicesInterfaceVirtualPortParamsMidoNet({
    this.interfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceId': ?interfaceId,
    };
  }

  factory DomainDevicesInterfaceVirtualPortParamsMidoNet.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPortParamsMidoNet(
      interfaceId: (() { final guardedValue = map['interfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

