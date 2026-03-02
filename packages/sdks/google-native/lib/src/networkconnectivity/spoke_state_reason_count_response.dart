// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The number of spokes in the hub that are inactive for this reason.
class SpokeStateReasonCountResponse {
  /// The total number of spokes that are inactive for a particular reason and associated with a given hub.
  final pulumi.Input<String> count;
  /// The reason that a spoke is inactive.
  final pulumi.Input<String> stateReasonCode;

  /// Creates a new [SpokeStateReasonCountResponse].
  /// [count] The total number of spokes that are inactive for a particular reason and associated with a given hub.
  /// [stateReasonCode] The reason that a spoke is inactive.
  SpokeStateReasonCountResponse({
    required this.count,
    required this.stateReasonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'stateReasonCode': stateReasonCode,
    };
  }

  factory SpokeStateReasonCountResponse.fromMap(Map<String, dynamic> map) {
    return SpokeStateReasonCountResponse(
      count: (map['count'] as String).input(),
      stateReasonCode: (map['stateReasonCode'] as String).input(),
    );
  }
}

