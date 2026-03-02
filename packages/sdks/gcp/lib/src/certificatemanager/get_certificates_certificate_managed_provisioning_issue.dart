// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatesCertificateManagedProvisioningIssue {
  /// Human readable explanation about the issue. Provided to help address
  /// the configuration issues.
  /// Not guaranteed to be stable. For programmatic access use 'reason' field.
  final pulumi.Input<String> details;
  /// Reason for provisioning failures.
  final pulumi.Input<String> reason;

  /// Creates a new [GetCertificatesCertificateManagedProvisioningIssue].
  /// [details] Human readable explanation about the issue. Provided to help address
  /// [reason] Reason for provisioning failures.
  GetCertificatesCertificateManagedProvisioningIssue({
    required this.details,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'reason': reason,
    };
  }

  factory GetCertificatesCertificateManagedProvisioningIssue.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificateManagedProvisioningIssue(
      details: (map['details'] as String).input(),
      reason: (map['reason'] as String).input(),
    );
  }
}

