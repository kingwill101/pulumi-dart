// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateCertificatePolicyLifetimeActionTrigger {
  /// The number of days before the Certificate expires that the action associated with this Trigger should run.
  final pulumi.Input<int> daysBeforeExpiry;
  /// The percentage at which during the Certificates Lifetime the action associated with this Trigger should run.
  final pulumi.Input<int> lifetimePercentage;

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
      daysBeforeExpiry: pulumi.Input.fromValue(map['daysBeforeExpiry'] as int),
      lifetimePercentage: pulumi.Input.fromValue(map['lifetimePercentage'] as int),
    );
  }
}

