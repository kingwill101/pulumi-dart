// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reason a spoke is inactive.
class StateReasonResponse {
  /// The code associated with this reason.
  final pulumi.Input<String> code;
  /// Human-readable details about this reason.
  final pulumi.Input<String> message;
  /// Additional information provided by the user in the RejectSpoke call.
  final pulumi.Input<String> userDetails;

  /// Creates a new [StateReasonResponse].
  /// [code] The code associated with this reason.
  /// [message] Human-readable details about this reason.
  /// [userDetails] Additional information provided by the user in the RejectSpoke call.
  const StateReasonResponse({
    required this.code,
    required this.message,
    required this.userDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'userDetails': userDetails,
    };
  }

  factory StateReasonResponse.fromMap(Map<String, dynamic> map) {
    return StateReasonResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      userDetails: pulumi.Input.fromValue(map['userDetails'] as String),
    );
  }
}

