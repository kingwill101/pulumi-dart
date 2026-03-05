// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_spec_certificate_management.dart';

/// **Workload Certificate**: The membership-specific input for WorkloadCertificate feature.
class MembershipSpec {
  /// Specifies workload certificate management.
  final pulumi.Input<MembershipSpecCertificateManagement>? certificateManagement;

  /// Creates a new [MembershipSpec].
  /// [certificateManagement] Specifies workload certificate management.
  MembershipSpec({
    this.certificateManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateManagement': ?pulumi.Input.mapOptionalInputValue<MembershipSpecCertificateManagement, String>(certificateManagement, (value) => value.wireValue),
    };
  }

  factory MembershipSpec.fromMap(Map<String, dynamic> map) {
    return MembershipSpec(
      certificateManagement: (() { final guardedValue = map['certificateManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MembershipSpecCertificateManagement.fromValue(guardedValue as String)); })(),
    );
  }
}

