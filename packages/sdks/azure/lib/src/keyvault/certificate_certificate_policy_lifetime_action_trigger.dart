// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificatePolicyLifetimeActionTrigger {
  /// The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with `lifetimePercentage`.
  final pulumi.Input<int>? daysBeforeExpiry;
  /// The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with `daysBeforeExpiry`.
  final pulumi.Input<int>? lifetimePercentage;

  /// Creates a new [CertificateCertificatePolicyLifetimeActionTrigger].
  /// [daysBeforeExpiry] The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with `lifetimePercentage`.
  /// [lifetimePercentage] The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with `daysBeforeExpiry`.
  const CertificateCertificatePolicyLifetimeActionTrigger({
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
      daysBeforeExpiry: (() { final guardedValue = map['daysBeforeExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lifetimePercentage: (() { final guardedValue = map['lifetimePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
