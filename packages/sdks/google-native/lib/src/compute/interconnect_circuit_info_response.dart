// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a single physical circuit between the Customer and Google. CircuitInfo objects are created by Google, so all fields are output only.
class InterconnectCircuitInfoResponse {
  /// Customer-side demarc ID for this circuit.
  final pulumi.Input<String> customerDemarcId;
  /// Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  final pulumi.Input<String> googleCircuitId;
  /// Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by Google to the customer in the LOA.
  final pulumi.Input<String> googleDemarcId;

  /// Creates a new [InterconnectCircuitInfoResponse].
  /// [customerDemarcId] Customer-side demarc ID for this circuit.
  /// [googleCircuitId] Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  /// [googleDemarcId] Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by Google to the customer in the LOA.
  const InterconnectCircuitInfoResponse({
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

  factory InterconnectCircuitInfoResponse.fromMap(Map<String, dynamic> map) {
    return InterconnectCircuitInfoResponse(
      customerDemarcId: pulumi.Input.fromValue(map['customerDemarcId'] as String),
      googleCircuitId: pulumi.Input.fromValue(map['googleCircuitId'] as String),
      googleDemarcId: pulumi.Input.fromValue(map['googleDemarcId'] as String),
    );
  }
}

