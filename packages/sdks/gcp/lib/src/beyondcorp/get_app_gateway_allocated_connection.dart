// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppGatewayAllocatedConnection {
  /// The ingress port of an allocated connection.
  final pulumi.Input<int> ingressPort;
  /// The PSC uri of an allocated connection.
  final pulumi.Input<String> pscUri;

  /// Creates a new [GetAppGatewayAllocatedConnection].
  /// [ingressPort] The ingress port of an allocated connection.
  /// [pscUri] The PSC uri of an allocated connection.
  GetAppGatewayAllocatedConnection({
    required this.ingressPort,
    required this.pscUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressPort': ingressPort,
      'pscUri': pscUri,
    };
  }

  factory GetAppGatewayAllocatedConnection.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayAllocatedConnection(
      ingressPort: (map['ingressPort'] as int).input(),
      pscUri: (map['pscUri'] as String).input(),
    );
  }
}

