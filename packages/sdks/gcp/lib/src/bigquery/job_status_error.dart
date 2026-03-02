// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatusError {
  /// The geographic location of the job. The default value is US.
  final pulumi.Input<String>? location;
  /// A human-readable description of the error.
  final pulumi.Input<String>? message;
  /// A short error code that summarizes the error.
  final pulumi.Input<String>? reason;

  /// Creates a new [JobStatusError].
  /// [location] The geographic location of the job. The default value is US.
  /// [message] A human-readable description of the error.
  /// [reason] A short error code that summarizes the error.
  JobStatusError({
    this.location,
    this.message,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'message': ?message,
      'reason': ?reason,
    };
  }

  factory JobStatusError.fromMap(Map<String, dynamic> map) {
    return JobStatusError(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
    );
  }
}

