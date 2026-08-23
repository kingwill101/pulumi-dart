// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatesCertificateManagedAuthorizationAttemptInfo {
  /// Human readable explanation for reaching the state. Provided to help
  /// address the configuration issues.
  /// Not guaranteed to be stable. For programmatic access use 'failure_reason' field.
  final pulumi.Input<String> details;
  /// Domain name of the authorization attempt.
  final pulumi.Input<String> domain;
  /// Reason for failure of the authorization attempt for the domain.
  final pulumi.Input<String> failureReason;
  /// State of the domain for managed certificate issuance.
  final pulumi.Input<String> state;

  /// Creates a new [GetCertificatesCertificateManagedAuthorizationAttemptInfo].
  /// [details] Human readable explanation for reaching the state. Provided to help
  /// [domain] Domain name of the authorization attempt.
  /// [failureReason] Reason for failure of the authorization attempt for the domain.
  /// [state] State of the domain for managed certificate issuance.
  const GetCertificatesCertificateManagedAuthorizationAttemptInfo({
    required this.details,
    required this.domain,
    required this.failureReason,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'domain': domain,
      'failureReason': failureReason,
      'state': state,
    };
  }

  factory GetCertificatesCertificateManagedAuthorizationAttemptInfo.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificateManagedAuthorizationAttemptInfo(
      details: pulumi.Input.fromValue(map['details'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      failureReason: pulumi.Input.fromValue(map['failureReason'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
