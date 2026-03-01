// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_tune_cache_tune_cach.dart';
import 'domain_cpu_tune_cache_tune_monitor.dart';

class DomainCpuTuneCacheTune {
  /// Configures the cache-related tuning parameters for the domain's CPU.
  final List<DomainCpuTuneCacheTuneCach>? caches;
  /// Sets the identifier for the overall cache tuning configuration related to the CPUs.
  final String? id;
  /// Specifies monitoring options for observing the effectiveness of cache tuning.
  final List<DomainCpuTuneCacheTuneMonitor>? monitors;
  /// Configures the virtual CPUs associated with cache tuning, determining which CPUs are affected by the cache settings.
  final String? vcpus;

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
      'caches': ?caches == null ? null : pulumi.Input.encodeList<DomainCpuTuneCacheTuneCach, Map<String, dynamic>>(caches!, (value) => value.toMap()),
      'id': ?id,
      'monitors': ?monitors == null ? null : pulumi.Input.encodeList<DomainCpuTuneCacheTuneMonitor, Map<String, dynamic>>(monitors!, (value) => value.toMap()),
      'vcpus': ?vcpus,
    };
  }

  factory DomainCpuTuneCacheTune.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneCacheTune(
      caches: map['caches'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneCacheTuneCach>(map['caches'], (value) => DomainCpuTuneCacheTuneCach.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      monitors: map['monitors'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneCacheTuneMonitor>(map['monitors'], (value) => DomainCpuTuneCacheTuneMonitor.fromMap((value as Map).cast<String, dynamic>())),
      vcpus: map['vcpus'] == null ? null : map['vcpus'] as String,
    );
  }
}

