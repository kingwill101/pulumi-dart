// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPortGroupVirtualPortParamsMidoNet {
  /// Specifies the interface ID for MidoNet virtual port parameters.
  final pulumi.Input<String>? interfaceId;

  /// Creates a new [NetworkPortGroupVirtualPortParamsMidoNet].
  /// [interfaceId] Specifies the interface ID for MidoNet virtual port parameters.
  NetworkPortGroupVirtualPortParamsMidoNet({
    this.interfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceId': ?interfaceId,
    };
  }

  factory NetworkPortGroupVirtualPortParamsMidoNet.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVirtualPortParamsMidoNet(
      interfaceId: map['interfaceId'] == null ? null : (map['interfaceId'] as String).input(),
    );
  }
}

