// ignore_for_file: unused_element, unnecessary_cast


class CertifiateCertificatePolicyLifetimeActionTrigger {
  /// The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with `lifetime_percentage`.
  final int? daysBeforeExpiry;
  /// The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with `days_before_expiry`.
  final int? lifetimePercentage;

  /// Creates a new [CertifiateCertificatePolicyLifetimeActionTrigger].
  /// [daysBeforeExpiry] The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with `lifetime_percentage`.
  /// [lifetimePercentage] The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with `days_before_expiry`.
  CertifiateCertificatePolicyLifetimeActionTrigger({
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
      daysBeforeExpiry: map['daysBeforeExpiry'] == null ? null : map['daysBeforeExpiry'] as int,
      lifetimePercentage: map['lifetimePercentage'] == null ? null : map['lifetimePercentage'] as int,
    );
  }
}

