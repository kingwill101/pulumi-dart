// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpokeReason {
  /// The code associated with this reason.
  final pulumi.Input<String>? code;
  /// Human-readable details about this reason.
  final pulumi.Input<String>? message;
  /// Additional information provided by the user in the RejectSpoke call.
  final pulumi.Input<String>? userDetails;

  /// Creates a new [SpokeReason].
  /// [code] The code associated with this reason.
  /// [message] Human-readable details about this reason.
  /// [userDetails] Additional information provided by the user in the RejectSpoke call.
  const SpokeReason({
    this.code,
    this.message,
    this.userDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'userDetails': ?userDetails,
    };
  }

  factory SpokeReason.fromMap(Map<String, dynamic> map) {
    return SpokeReason(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDetails: (() { final guardedValue = map['userDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

