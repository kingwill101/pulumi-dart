// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectCircuitInfo {
  /// (Output)
  /// Customer-side demarc ID for this circuit.
  final pulumi.Input<String>? customerDemarcId;
  /// (Output)
  /// Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
  final pulumi.Input<String>? googleCircuitId;
  /// (Output)
  /// Google-side demarc ID for this circuit. Assigned at circuit turn-up and provided by
  /// Google to the customer in the LOA.
  final pulumi.Input<String>? googleDemarcId;

  /// Creates a new [InterconnectCircuitInfo].
  /// [customerDemarcId] (Output)
  /// [googleCircuitId] (Output)
  /// [googleDemarcId] (Output)
  const InterconnectCircuitInfo({
    this.customerDemarcId,
    this.googleCircuitId,
    this.googleDemarcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerDemarcId': ?customerDemarcId,
      'googleCircuitId': ?googleCircuitId,
      'googleDemarcId': ?googleDemarcId,
    };
  }

  factory InterconnectCircuitInfo.fromMap(Map<String, dynamic> map) {
    return InterconnectCircuitInfo(
      customerDemarcId: (() { final guardedValue = map['customerDemarcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleCircuitId: (() { final guardedValue = map['googleCircuitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleDemarcId: (() { final guardedValue = map['googleDemarcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
