// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateManagedAuthorizationAttemptInfo {
  /// Human readable explanation for reaching the state. Provided to help
  /// address the configuration issues.
  /// Not guaranteed to be stable. For programmatic access use 'failure_reason' field.
  final pulumi.Input<String>? details;
  /// Domain name of the authorization attempt.
  final pulumi.Input<String>? domain;
  /// Reason for failure of the authorization attempt for the domain.
  final pulumi.Input<String>? failureReason;
  /// State of the domain for managed certificate issuance.
  final pulumi.Input<String>? state;

  /// Creates a new [CertificateManagedAuthorizationAttemptInfo].
  /// [details] Human readable explanation for reaching the state. Provided to help
  /// [domain] Domain name of the authorization attempt.
  /// [failureReason] Reason for failure of the authorization attempt for the domain.
  /// [state] State of the domain for managed certificate issuance.
  CertificateManagedAuthorizationAttemptInfo({
    this.details,
    this.domain,
    this.failureReason,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'domain': ?domain,
      'failureReason': ?failureReason,
      'state': ?state,
    };
  }

  factory CertificateManagedAuthorizationAttemptInfo.fromMap(Map<String, dynamic> map) {
    return CertificateManagedAuthorizationAttemptInfo(
      details: map['details'] == null ? null : (map['details'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      failureReason: map['failureReason'] == null ? null : (map['failureReason'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

