// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertifiateCertificatePolicyLifetimeActionTrigger {
  /// The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with `lifetime_percentage`.
  final pulumi.Input<int>? daysBeforeExpiry;
  /// The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with `days_before_expiry`.
  final pulumi.Input<int>? lifetimePercentage;

  /// Creates a new [CertifiateCertificatePolicyLifetimeActionTrigger].
  /// [daysBeforeExpiry] The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with `lifetime_percentage`.
  /// [lifetimePercentage] The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with `days_before_expiry`.
  const CertifiateCertificatePolicyLifetimeActionTrigger({
    this.daysBeforeExpiry,
    this.lifetimePercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysBeforeExpiry': ?daysBeforeExpiry,
      'lifetimePercentage': ?lifetimePercentage,
    };
  }

  factory CertifiateCertificatePolicyLifetimeActionTrigger.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicyLifetimeActionTrigger(
      daysBeforeExpiry: (() { final guardedValue = map['daysBeforeExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lifetimePercentage: (() { final guardedValue = map['lifetimePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

