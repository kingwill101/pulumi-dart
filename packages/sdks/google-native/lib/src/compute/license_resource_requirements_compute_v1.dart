// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LicenseResourceRequirementsComputeV1 {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final pulumi.Input<int?>? minGuestCpuCount;
  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final pulumi.Input<int?>? minMemoryMb;

  /// Creates a new [LicenseResourceRequirementsComputeV1].
  /// [minGuestCpuCount] Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  /// [minMemoryMb] Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  const LicenseResourceRequirementsComputeV1({
    this.minGuestCpuCount,
    this.minMemoryMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minGuestCpuCount': ?minGuestCpuCount,
      'minMemoryMb': ?minMemoryMb,
    };
  }

  factory LicenseResourceRequirementsComputeV1.fromMap(Map<String, dynamic> map) {
    return LicenseResourceRequirementsComputeV1(
      minGuestCpuCount: (() { final guardedValue = map['minGuestCpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minMemoryMb: (() { final guardedValue = map['minMemoryMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
