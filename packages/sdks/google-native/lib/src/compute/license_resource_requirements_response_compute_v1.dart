// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LicenseResourceRequirementsResponseComputeV1 {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final pulumi.Input<int> minGuestCpuCount;
  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final pulumi.Input<int> minMemoryMb;

  /// Creates a new [LicenseResourceRequirementsResponseComputeV1].
  /// [minGuestCpuCount] Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  /// [minMemoryMb] Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  const LicenseResourceRequirementsResponseComputeV1({
    required this.minGuestCpuCount,
    required this.minMemoryMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minGuestCpuCount': minGuestCpuCount,
      'minMemoryMb': minMemoryMb,
    };
  }

  factory LicenseResourceRequirementsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return LicenseResourceRequirementsResponseComputeV1(
      minGuestCpuCount: pulumi.Input.fromValue(map['minGuestCpuCount'] as int),
      minMemoryMb: pulumi.Input.fromValue(map['minMemoryMb'] as int),
    );
  }
}

