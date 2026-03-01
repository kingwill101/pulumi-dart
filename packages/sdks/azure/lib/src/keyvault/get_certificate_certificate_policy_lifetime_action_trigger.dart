// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateCertificatePolicyLifetimeActionTrigger {
  /// The number of days before the Certificate expires that the action associated with this Trigger should run.
  final int daysBeforeExpiry;
  /// The percentage at which during the Certificates Lifetime the action associated with this Trigger should run.
  final int lifetimePercentage;

  /// Creates a new [GetCertificateCertificatePolicyLifetimeActionTrigger].
  /// [daysBeforeExpiry] The number of days before the Certificate expires that the action associated with this Trigger should run.
  /// [lifetimePercentage] The percentage at which during the Certificates Lifetime the action associated with this Trigger should run.
  GetCertificateCertificatePolicyLifetimeActionTrigger({
    required this.daysBeforeExpiry,
    required this.lifetimePercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysBeforeExpiry': daysBeforeExpiry,
      'lifetimePercentage': lifetimePercentage,
    };
  }

  factory GetCertificateCertificatePolicyLifetimeActionTrigger.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyLifetimeActionTrigger(
      daysBeforeExpiry: map['daysBeforeExpiry'] as int,
      lifetimePercentage: map['lifetimePercentage'] as int,
    );
  }
}

