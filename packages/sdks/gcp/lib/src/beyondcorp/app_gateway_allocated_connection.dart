// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppGatewayAllocatedConnection {
  /// The ingress port of an allocated connection.
  final pulumi.Input<int?>? ingressPort;
  /// The PSC uri of an allocated connection.
  final pulumi.Input<String?>? pscUri;

  /// Creates a new [AppGatewayAllocatedConnection].
  /// [ingressPort] The ingress port of an allocated connection.
  /// [pscUri] The PSC uri of an allocated connection.
  const AppGatewayAllocatedConnection({
    this.ingressPort,
    this.pscUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressPort': ?ingressPort,
      'pscUri': ?pscUri,
    };
  }

  factory AppGatewayAllocatedConnection.fromMap(Map<String, dynamic> map) {
    return AppGatewayAllocatedConnection(
      ingressPort: (() { final guardedValue = map['ingressPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      pscUri: (() { final guardedValue = map['pscUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
