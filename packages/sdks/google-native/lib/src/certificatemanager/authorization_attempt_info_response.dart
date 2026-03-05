// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the latest attempt to authorize a domain for certificate issuance.
class AuthorizationAttemptInfoResponse {
  /// Human readable explanation for reaching the state. Provided to help address the configuration issues. Not guaranteed to be stable. For programmatic access use FailureReason enum.
  final pulumi.Input<String> details;
  /// Domain name of the authorization attempt.
  final pulumi.Input<String> domain;
  /// Reason for failure of the authorization attempt for the domain.
  final pulumi.Input<String> failureReason;
  /// State of the domain for managed certificate issuance.
  final pulumi.Input<String> state;

  /// Creates a new [AuthorizationAttemptInfoResponse].
  /// [details] Human readable explanation for reaching the state. Provided to help address the configuration issues. Not guaranteed to be stable. For programmatic access use FailureReason enum.
  /// [domain] Domain name of the authorization attempt.
  /// [failureReason] Reason for failure of the authorization attempt for the domain.
  /// [state] State of the domain for managed certificate issuance.
  AuthorizationAttemptInfoResponse({
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

  factory AuthorizationAttemptInfoResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationAttemptInfoResponse(
      details: pulumi.Input.fromValue(map['details'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      failureReason: pulumi.Input.fromValue(map['failureReason'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

