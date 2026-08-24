// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesDomainVerificationData {
  final pulumi.Input<String?>? errorMessage;
  /// Available values: "pending", "active", "deactivated", "blocked", "error".
  final pulumi.Input<String?>? status;

  /// Creates a new [PagesDomainVerificationData].
  /// [errorMessage] Optional.
  /// [status] Available values: "pending", "active", "deactivated", "blocked", "error".
  const PagesDomainVerificationData({
    this.errorMessage,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'status': ?status,
    };
  }

  factory PagesDomainVerificationData.fromMap(Map<String, dynamic> map) {
    return PagesDomainVerificationData(
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
