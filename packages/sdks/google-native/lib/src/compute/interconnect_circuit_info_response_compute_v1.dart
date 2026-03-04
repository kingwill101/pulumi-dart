// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a single physical circuit between the Customer and Google. CircuitInfo objects are created by Google, so all fields are output only.
class InterconnectCircuitInfoResponseComputeV1 {
  /// Customer-side demarc ID for this circuit.
  final pulumi.Input<String> customerDemarcId;

  /// Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  final pulumi.Input<String> googleCircuitId;

  /// Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by Google to the customer in the LOA.
  final pulumi.Input<String> googleDemarcId;

  /// Creates a new [InterconnectCircuitInfoResponseComputeV1].
  /// [customerDemarcId] Customer-side demarc ID for this circuit.
  /// [googleCircuitId] Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  /// [googleDemarcId] Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by Google to the customer in the LOA.
  InterconnectCircuitInfoResponseComputeV1({
    required this.customerDemarcId,
    required this.googleCircuitId,
    required this.googleDemarcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerDemarcId': customerDemarcId,
      'googleCircuitId': googleCircuitId,
      'googleDemarcId': googleDemarcId,
    };
  }

  factory InterconnectCircuitInfoResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectCircuitInfoResponseComputeV1(
      customerDemarcId: pulumi.Input.fromValue(
        map['customerDemarcId'] as String,
      ),
      googleCircuitId: pulumi.Input.fromValue(map['googleCircuitId'] as String),
      googleDemarcId: pulumi.Input.fromValue(map['googleDemarcId'] as String),
    );
  }
}
