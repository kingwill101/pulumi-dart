// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest object
class CertificateSigningRequestCondition {
  /// lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  final pulumi.Input<String>? lastTransitionTime;
  /// lastUpdateTime is the time of the last update to this condition
  final pulumi.Input<String>? lastUpdateTime;
  /// message contains a human readable message with details about the request state
  final pulumi.Input<String>? message;
  /// reason indicates a brief reason for the request state
  final pulumi.Input<String>? reason;
  /// status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown".
  final pulumi.Input<String> status;
  /// type of the condition. Known conditions are "Approved", "Denied", and "Failed".
  ///
  /// An "Approved" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.
  ///
  /// A "Denied" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.
  ///
  /// A "Failed" condition is added via the /status subresource, indicating the signer failed to issue the certificate.
  ///
  /// Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.
  ///
  /// Only one condition of a given type is allowed.
  final pulumi.Input<String> type;

  /// Creates a new [CertificateSigningRequestCondition].
  /// [lastTransitionTime] lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  /// [lastUpdateTime] lastUpdateTime is the time of the last update to this condition
  /// [message] message contains a human readable message with details about the request state
  /// [reason] reason indicates a brief reason for the request state
  /// [status] status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown".
  /// [type] type of the condition. Known conditions are "Approved", "Denied", and "Failed".
  CertificateSigningRequestCondition({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'lastUpdateTime': ?lastUpdateTime,
      'message': ?message,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory CertificateSigningRequestCondition.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestCondition(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      lastUpdateTime: map['lastUpdateTime'] == null ? null : (map['lastUpdateTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

