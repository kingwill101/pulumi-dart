// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A certificate managed by App Engine.
class ManagedCertificateResponseAppengineV1alpha {
  /// Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.
  final pulumi.Input<String> lastRenewalTime;
  /// Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.
  final pulumi.Input<String> status;

  /// Creates a new [ManagedCertificateResponseAppengineV1alpha].
  /// [lastRenewalTime] Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.
  /// [status] Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.
  const ManagedCertificateResponseAppengineV1alpha({
    required this.lastRenewalTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRenewalTime': lastRenewalTime,
      'status': status,
    };
  }

  factory ManagedCertificateResponseAppengineV1alpha.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateResponseAppengineV1alpha(
      lastRenewalTime: pulumi.Input.fromValue(map['lastRenewalTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

