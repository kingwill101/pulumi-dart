// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateManagedProvisioningIssue {
  /// Human readable explanation about the issue. Provided to help address
  /// the configuration issues.
  /// Not guaranteed to be stable. For programmatic access use 'reason' field.
  final pulumi.Input<String>? details;
  /// Reason for provisioning failures.
  final pulumi.Input<String>? reason;

  /// Creates a new [CertificateManagedProvisioningIssue].
  /// [details] Human readable explanation about the issue. Provided to help address
  /// [reason] Reason for provisioning failures.
  CertificateManagedProvisioningIssue({
    this.details,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'reason': ?reason,
    };
  }

  factory CertificateManagedProvisioningIssue.fromMap(Map<String, dynamic> map) {
    return CertificateManagedProvisioningIssue(
      details: map['details'] == null ? null : (map['details'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
    );
  }
}

