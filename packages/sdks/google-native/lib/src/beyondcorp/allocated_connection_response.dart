// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allocated connection of the AppGateway.
class AllocatedConnectionResponse {
  /// The ingress port of an allocated connection
  final pulumi.Input<int> ingressPort;

  /// The PSC uri of an allocated connection
  final pulumi.Input<String> pscUri;

  /// Creates a new [AllocatedConnectionResponse].
  /// [ingressPort] The ingress port of an allocated connection
  /// [pscUri] The PSC uri of an allocated connection
  AllocatedConnectionResponse({
    required this.ingressPort,
    required this.pscUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ingressPort': ingressPort, 'pscUri': pscUri};
  }

  factory AllocatedConnectionResponse.fromMap(Map<String, dynamic> map) {
    return AllocatedConnectionResponse(
      ingressPort: pulumi.Input.fromValue(map['ingressPort'] as int),
      pscUri: pulumi.Input.fromValue(map['pscUri'] as String),
    );
  }
}
