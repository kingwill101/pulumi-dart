// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_tune_cache_tune_cach.dart';
import 'domain_cpu_tune_cache_tune_monitor.dart';

class DomainCpuTuneCacheTune {
  /// Configures the cache-related tuning parameters for the domain's CPU.
  final pulumi.Input<List<DomainCpuTuneCacheTuneCach>>? caches;
  /// Sets the identifier for the overall cache tuning configuration related to the CPUs.
  final pulumi.Input<String>? id;
  /// Specifies monitoring options for observing the effectiveness of cache tuning.
  final pulumi.Input<List<DomainCpuTuneCacheTuneMonitor>>? monitors;
  /// Configures the virtual CPUs associated with cache tuning, determining which CPUs are affected by the cache settings.
  final pulumi.Input<String>? vcpus;

  /// Creates a new [DomainCpuTuneCacheTune].
  /// [caches] Configures the cache-related tuning parameters for the domain's CPU.
  /// [id] Sets the identifier for the overall cache tuning configuration related to the CPUs.
  /// [monitors] Specifies monitoring options for observing the effectiveness of cache tuning.
  /// [vcpus] Configures the virtual CPUs associated with cache tuning, determining which CPUs are affected by the cache settings.
  DomainCpuTuneCacheTune({
    this.caches,
    this.id,
    this.monitors,
    this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caches': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneCacheTuneCach>, List<Map<String, dynamic>>>(caches, (value) => pulumi.Input.encodeList<DomainCpuTuneCacheTuneCach, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'monitors': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneCacheTuneMonitor>, List<Map<String, dynamic>>>(monitors, (value) => pulumi.Input.encodeList<DomainCpuTuneCacheTuneMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vcpus': ?vcpus,
    };
  }

  factory DomainCpuTuneCacheTune.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneCacheTune(
      caches: map['caches'] == null ? null : (pulumi.Input.decodeList<DomainCpuTuneCacheTuneCach>(map['caches'], (value) => DomainCpuTuneCacheTuneCach.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      monitors: map['monitors'] == null ? null : (pulumi.Input.decodeList<DomainCpuTuneCacheTuneMonitor>(map['monitors'], (value) => DomainCpuTuneCacheTuneMonitor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vcpus: map['vcpus'] == null ? null : (map['vcpus'] as String).input(),
    );
  }
}

