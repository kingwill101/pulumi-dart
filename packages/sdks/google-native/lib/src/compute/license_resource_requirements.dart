// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LicenseResourceRequirements {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final pulumi.Input<int>? minGuestCpuCount;
  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final pulumi.Input<int>? minMemoryMb;

  /// Creates a new [LicenseResourceRequirements].
  /// [minGuestCpuCount] Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  /// [minMemoryMb] Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  LicenseResourceRequirements({
    this.minGuestCpuCount,
    this.minMemoryMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minGuestCpuCount': ?minGuestCpuCount,
      'minMemoryMb': ?minMemoryMb,
    };
  }

  factory LicenseResourceRequirements.fromMap(Map<String, dynamic> map) {
    return LicenseResourceRequirements(
      minGuestCpuCount: map['minGuestCpuCount'] == null ? null : (map['minGuestCpuCount'] as int).input(),
      minMemoryMb: map['minMemoryMb'] == null ? null : (map['minMemoryMb'] as int).input(),
    );
  }
}

