// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPortGroupVirtualPortParamsMidoNet {
  /// Specifies the interface ID for MidoNet virtual port parameters.
  final pulumi.Input<String?>? interfaceId;

  /// Creates a new [NetworkPortGroupVirtualPortParamsMidoNet].
  /// [interfaceId] Specifies the interface ID for MidoNet virtual port parameters.
  const NetworkPortGroupVirtualPortParamsMidoNet({
    this.interfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceId': ?interfaceId,
    };
  }

  factory NetworkPortGroupVirtualPortParamsMidoNet.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVirtualPortParamsMidoNet(
      interfaceId: (() { final guardedValue = map['interfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
