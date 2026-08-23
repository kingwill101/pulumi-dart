// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedFailureDetails {
  /// (Output)
  /// errorAction contains the user action prescribed for remediation of feed
  /// error.
  final pulumi.Input<String>? errorAction;
  /// (Output)
  /// errorCause contains the information regarding the failure cause.
  final pulumi.Input<String>? errorCause;
  /// (Output)
  /// errorCode contains the error code for the feed. The field is populated for
  /// the feeds with failed status.
  final pulumi.Input<String>? errorCode;
  /// (Output)
  /// httpErrorCode contains the HTTP error code for the feed failure.
  /// feed transfer failure may or may not result in http error code.
  final pulumi.Input<int>? httpErrorCode;

  /// Creates a new [FeedFailureDetails].
  /// [errorAction] (Output)
  /// [errorCause] (Output)
  /// [errorCode] (Output)
  /// [httpErrorCode] (Output)
  const FeedFailureDetails({
    this.errorAction,
    this.errorCause,
    this.errorCode,
    this.httpErrorCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorAction': ?errorAction,
      'errorCause': ?errorCause,
      'errorCode': ?errorCode,
      'httpErrorCode': ?httpErrorCode,
    };
  }

  factory FeedFailureDetails.fromMap(Map<String, dynamic> map) {
    return FeedFailureDetails(
      errorAction: (() { final guardedValue = map['errorAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorCause: (() { final guardedValue = map['errorCause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpErrorCode: (() { final guardedValue = map['httpErrorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
