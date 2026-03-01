// ignore_for_file: unused_element, unnecessary_cast


/// Allocated connection of the AppGateway.
class AllocatedConnectionResponseBeyondcorpV1alpha {
  /// The ingress port of an allocated connection
  final int ingressPort;
  /// The PSC uri of an allocated connection
  final String pscUri;

  /// Creates a new [AllocatedConnectionResponseBeyondcorpV1alpha].
  /// [ingressPort] The ingress port of an allocated connection
  /// [pscUri] The PSC uri of an allocated connection
  AllocatedConnectionResponseBeyondcorpV1alpha({
    required this.ingressPort,
    required this.pscUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressPort': ingressPort,
      'pscUri': pscUri,
    };
  }

  factory AllocatedConnectionResponseBeyondcorpV1alpha.fromMap(Map<String, dynamic> map) {
    return AllocatedConnectionResponseBeyondcorpV1alpha(
      ingressPort: map['ingressPort'] as int,
      pscUri: map['pscUri'] as String,
    );
  }
}

