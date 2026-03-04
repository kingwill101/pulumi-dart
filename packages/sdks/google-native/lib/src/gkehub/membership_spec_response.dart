// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Workload Certificate**: The membership-specific input for WorkloadCertificate feature.
class MembershipSpecResponse {
  /// Specifies workload certificate management.
  final pulumi.Input<String> certificateManagement;

  /// Creates a new [MembershipSpecResponse].
  /// [certificateManagement] Specifies workload certificate management.
  MembershipSpecResponse({required this.certificateManagement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateManagement': certificateManagement};
  }

  factory MembershipSpecResponse.fromMap(Map<String, dynamic> map) {
    return MembershipSpecResponse(
      certificateManagement: pulumi.Input.fromValue(
        map['certificateManagement'] as String,
      ),
    );
  }
}
