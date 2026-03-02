// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificatePolicyLifetimeActionTrigger {
  /// The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with `lifetime_percentage`.
  final pulumi.Input<int>? daysBeforeExpiry;
  /// The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with `days_before_expiry`.
  final pulumi.Input<int>? lifetimePercentage;

  /// Creates a new [CertificateCertificatePolicyLifetimeActionTrigger].
  /// [daysBeforeExpiry] The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with `lifetime_percentage`.
  /// [lifetimePercentage] The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with `days_before_expiry`.
  CertificateCertificatePolicyLifetimeActionTrigger({
    this.daysBeforeExpiry,
    this.lifetimePercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysBeforeExpiry': ?daysBeforeExpiry,
      'lifetimePercentage': ?lifetimePercentage,
    };
  }

  factory CertificateCertificatePolicyLifetimeActionTrigger.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicyLifetimeActionTrigger(
      daysBeforeExpiry: map['daysBeforeExpiry'] == null ? null : (map['daysBeforeExpiry'] as int).input(),
      lifetimePercentage: map['lifetimePercentage'] == null ? null : (map['lifetimePercentage'] as int).input(),
    );
  }
}

