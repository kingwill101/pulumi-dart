// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';

/// Queuing parameters for the requested deferred capacity.
class QueuingPolicyResponse {
  /// Relative deadline for waiting for capacity.
  final pulumi.Input<DurationResponse> validUntilDuration;
  /// Absolute deadline for waiting for capacity in RFC3339 text format.
  final pulumi.Input<String> validUntilTime;

  /// Creates a new [QueuingPolicyResponse].
  /// [validUntilDuration] Relative deadline for waiting for capacity.
  /// [validUntilTime] Absolute deadline for waiting for capacity in RFC3339 text format.
  const QueuingPolicyResponse({
    required this.validUntilDuration,
    required this.validUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validUntilDuration': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(validUntilDuration, (value) => value.toMap()),
      'validUntilTime': validUntilTime,
    };
  }

  factory QueuingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return QueuingPolicyResponse(
      validUntilDuration: pulumi.Input.fromValue(DurationResponse.fromMap((map['validUntilDuration']! as Map).cast<String, dynamic>())),
      validUntilTime: pulumi.Input.fromValue(map['validUntilTime'] as String),
    );
  }
}
