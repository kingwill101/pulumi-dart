// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkVirtualPortParamsMidoNet {
  /// Specifies the interface ID for MidoNet virtual port parameters.
  final pulumi.Input<String>? interfaceId;

  /// Creates a new [NetworkVirtualPortParamsMidoNet].
  /// [interfaceId] Specifies the interface ID for MidoNet virtual port parameters.
  NetworkVirtualPortParamsMidoNet({this.interfaceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'interfaceId': ?interfaceId};
  }

  factory NetworkVirtualPortParamsMidoNet.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualPortParamsMidoNet(
      interfaceId: (() {
        final guardedValue = map['interfaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
