// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneEmulatorPin {
  /// Sets which CPUs the emulator can be pinned to, allowing for controlled CPU allocation and enhanced performance.
  final pulumi.Input<String> cpuSet;

  /// Creates a new [DomainCpuTuneEmulatorPin].
  /// [cpuSet] Sets which CPUs the emulator can be pinned to, allowing for controlled CPU allocation and enhanced performance.
  const DomainCpuTuneEmulatorPin({
    required this.cpuSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuSet': cpuSet,
    };
  }

  factory DomainCpuTuneEmulatorPin.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneEmulatorPin(
      cpuSet: pulumi.Input.fromValue(map['cpuSet'] as String),
    );
  }
}

