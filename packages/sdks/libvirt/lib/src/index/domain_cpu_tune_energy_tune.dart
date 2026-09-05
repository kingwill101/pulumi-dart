// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_tune_energy_tune_monitor.dart';

class DomainCpuTuneEnergyTune {
  final pulumi.Input<String?>? id;
  final pulumi.Input<List<DomainCpuTuneEnergyTuneMonitor>?>? monitors;
  final pulumi.Input<String> vcpus;

  /// Creates a new [DomainCpuTuneEnergyTune].
  /// [id] Optional.
  /// [monitors] Optional.
  /// [vcpus] Required.
  const DomainCpuTuneEnergyTune({
    this.id,
    this.monitors,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'monitors': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneEnergyTuneMonitor>, List<Map<String, dynamic>>>(monitors, (value) => pulumi.Input.encodeList<DomainCpuTuneEnergyTuneMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vcpus': vcpus,
    };
  }

  factory DomainCpuTuneEnergyTune.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneEnergyTune(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitors: (() { final guardedValue = map['monitors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainCpuTuneEnergyTuneMonitor>(guardedValue, (value) => DomainCpuTuneEnergyTuneMonitor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vcpus: pulumi.Input.fromValue(map['vcpus'] as String),
    );
  }
}
