// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneEnergyTuneMonitor {
  final pulumi.Input<String> vcpus;

  /// Creates a new [DomainCpuTuneEnergyTuneMonitor].
  /// [vcpus] Required.
  const DomainCpuTuneEnergyTuneMonitor({
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vcpus': vcpus,
    };
  }

  factory DomainCpuTuneEnergyTuneMonitor.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneEnergyTuneMonitor(
      vcpus: pulumi.Input.fromValue(map['vcpus'] as String),
    );
  }
}
