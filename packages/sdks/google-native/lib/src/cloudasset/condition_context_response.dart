// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IAM conditions context.
class ConditionContextResponse {
  /// The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.
  final pulumi.Input<String> accessTime;

  /// Creates a new [ConditionContextResponse].
  /// [accessTime] The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.
  const ConditionContextResponse({
    required this.accessTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTime': accessTime,
    };
  }

  factory ConditionContextResponse.fromMap(Map<String, dynamic> map) {
    return ConditionContextResponse(
      accessTime: pulumi.Input.fromValue(map['accessTime'] as String),
    );
  }
}

