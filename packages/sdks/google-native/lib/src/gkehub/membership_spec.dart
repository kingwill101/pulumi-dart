// ignore_for_file: unused_element, unnecessary_cast

import 'membership_spec_certificate_management.dart';

/// **Workload Certificate**: The membership-specific input for WorkloadCertificate feature.
class MembershipSpec {
  /// Specifies workload certificate management.
  final MembershipSpecCertificateManagement? certificateManagement;

  /// Creates a new [MembershipSpec].
  /// [certificateManagement] Specifies workload certificate management.
  MembershipSpec({
    this.certificateManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateManagement': ?certificateManagement == null ? null : certificateManagement!.value,
    };
  }

  factory MembershipSpec.fromMap(Map<String, dynamic> map) {
    return MembershipSpec(
      certificateManagement: map['certificateManagement'] == null ? null : MembershipSpecCertificateManagement.fromValue(map['certificateManagement'] as String),
    );
  }
}

