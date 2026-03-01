// ignore_for_file: unused_element, unnecessary_cast


class LicenseResourceRequirementsResponseComputeV1 {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final int minGuestCpuCount;
  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final int minMemoryMb;

  /// Creates a new [LicenseResourceRequirementsResponseComputeV1].
  /// [minGuestCpuCount] Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  /// [minMemoryMb] Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  LicenseResourceRequirementsResponseComputeV1({
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
      minGuestCpuCount: map['minGuestCpuCount'] as int,
      minMemoryMb: map['minMemoryMb'] as int,
    );
  }
}

