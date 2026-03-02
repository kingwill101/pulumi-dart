// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_tune_cache_tune.dart';
import 'domain_cpu_tune_emulator_pin.dart';
import 'domain_cpu_tune_emulator_sched.dart';
import 'domain_cpu_tune_io_thread_pin.dart';
import 'domain_cpu_tune_io_thread_sched.dart';
import 'domain_cpu_tune_memory_tune.dart';
import 'domain_cpu_tune_vcpu_pin.dart';
import 'domain_cpu_tune_vcpu_sched.dart';

class DomainCpuTune {
  /// Specifies tuning parameters for cache optimization associated with the domain's CPU.
  final pulumi.Input<List<DomainCpuTuneCacheTune>>? cacheTunes;
  /// Specifies the time period for scheduling emulator activities, influencing CPU allocation for the emulator's tasks.
  final pulumi.Input<double>? emulatorPeriod;
  /// Enables or disables the pinning of the emulator to specific CPUs, which can enhance performance by reducing context switching.
  final pulumi.Input<DomainCpuTuneEmulatorPin>? emulatorPin;
  /// Defines the allowed CPU time for the emulator, which can help in managing the performance of virtual machines.
  final pulumi.Input<double>? emulatorQuota;
  /// Configures the scheduling algorithm for the emulator, impacting how CPU resources are allocated during execution.
  final pulumi.Input<DomainCpuTuneEmulatorSched>? emulatorSched;
  /// Configures the global scheduling period for all CPUs, influencing the overall allocation of CPU time across the system.
  final pulumi.Input<double>? globalPeriod;
  /// Sets the total CPU time available across all virtual CPUs, which can regulate resource usage for the domain.
  final pulumi.Input<double>? globalQuota;
  /// Defines the scheduling period for IO threads, controlling the timing and frequency of IO operations on virtual devices.
  final pulumi.Input<double>? ioThreadPeriod;
  /// Enables pinning of IO threads to specific CPUs, improving the performance of virtual block devices by reducing overhead.
  final pulumi.Input<List<DomainCpuTuneIoThreadPin>>? ioThreadPins;
  /// Sets the allowed CPU time for IO threads, controlling their resource consumption during operation.
  final pulumi.Input<double>? ioThreadQuota;
  /// Configures the scheduling parameters for IO threads, determining how they interact with CPU resources over time.
  final pulumi.Input<List<DomainCpuTuneIoThreadSched>>? ioThreadScheds;
  /// Enables memory tuning parameters that control how memory resources are allocated and managed for the domain.
  final pulumi.Input<List<DomainCpuTuneMemoryTune>>? memoryTunes;
  /// Defines the scheduling period for the domain's CPUs, determining the frequency of CPU resource allocation.
  final pulumi.Input<double>? period;
  /// Sets the maximum CPU time allocation for the domain, controlling how much CPU resource the domain can utilize.
  final pulumi.Input<double>? quota;
  /// Configures the relative weight of CPU resources assigned to the domain, influencing its priority in CPU scheduling.
  final pulumi.Input<double>? shares;
  /// Enables pinning configurations for virtual CPUs, enhancing performance by binding specific virtual CPUs to physical cores.
  final pulumi.Input<List<DomainCpuTuneVcpuPin>>? vcpuPins;
  /// Configures the scheduling parameters for virtual CPUs, impacting how CPU resources are allocated during execution.
  final pulumi.Input<List<DomainCpuTuneVcpuSched>>? vcpuScheds;

  /// Creates a new [DomainCpuTune].
  /// [cacheTunes] Specifies tuning parameters for cache optimization associated with the domain's CPU.
  /// [emulatorPeriod] Specifies the time period for scheduling emulator activities, influencing CPU allocation for the emulator's tasks.
  /// [emulatorPin] Enables or disables the pinning of the emulator to specific CPUs, which can enhance performance by reducing context switching.
  /// [emulatorQuota] Defines the allowed CPU time for the emulator, which can help in managing the performance of virtual machines.
  /// [emulatorSched] Configures the scheduling algorithm for the emulator, impacting how CPU resources are allocated during execution.
  /// [globalPeriod] Configures the global scheduling period for all CPUs, influencing the overall allocation of CPU time across the system.
  /// [globalQuota] Sets the total CPU time available across all virtual CPUs, which can regulate resource usage for the domain.
  /// [ioThreadPeriod] Defines the scheduling period for IO threads, controlling the timing and frequency of IO operations on virtual devices.
  /// [ioThreadPins] Enables pinning of IO threads to specific CPUs, improving the performance of virtual block devices by reducing overhead.
  /// [ioThreadQuota] Sets the allowed CPU time for IO threads, controlling their resource consumption during operation.
  /// [ioThreadScheds] Configures the scheduling parameters for IO threads, determining how they interact with CPU resources over time.
  /// [memoryTunes] Enables memory tuning parameters that control how memory resources are allocated and managed for the domain.
  /// [period] Defines the scheduling period for the domain's CPUs, determining the frequency of CPU resource allocation.
  /// [quota] Sets the maximum CPU time allocation for the domain, controlling how much CPU resource the domain can utilize.
  /// [shares] Configures the relative weight of CPU resources assigned to the domain, influencing its priority in CPU scheduling.
  /// [vcpuPins] Enables pinning configurations for virtual CPUs, enhancing performance by binding specific virtual CPUs to physical cores.
  /// [vcpuScheds] Configures the scheduling parameters for virtual CPUs, impacting how CPU resources are allocated during execution.
  DomainCpuTune({
    this.cacheTunes,
    this.emulatorPeriod,
    this.emulatorPin,
    this.emulatorQuota,
    this.emulatorSched,
    this.globalPeriod,
    this.globalQuota,
    this.ioThreadPeriod,
    this.ioThreadPins,
    this.ioThreadQuota,
    this.ioThreadScheds,
    this.memoryTunes,
    this.period,
    this.quota,
    this.shares,
    this.vcpuPins,
    this.vcpuScheds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheTunes': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneCacheTune>, List<Map<String, dynamic>>>(cacheTunes, (value) => pulumi.Input.encodeList<DomainCpuTuneCacheTune, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emulatorPeriod': ?emulatorPeriod,
      'emulatorPin': ?pulumi.Input.mapOptionalInputValue<DomainCpuTuneEmulatorPin, Map<String, dynamic>>(emulatorPin, (value) => value.toMap()),
      'emulatorQuota': ?emulatorQuota,
      'emulatorSched': ?pulumi.Input.mapOptionalInputValue<DomainCpuTuneEmulatorSched, Map<String, dynamic>>(emulatorSched, (value) => value.toMap()),
      'globalPeriod': ?globalPeriod,
      'globalQuota': ?globalQuota,
      'ioThreadPeriod': ?ioThreadPeriod,
      'ioThreadPins': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneIoThreadPin>, List<Map<String, dynamic>>>(ioThreadPins, (value) => pulumi.Input.encodeList<DomainCpuTuneIoThreadPin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ioThreadQuota': ?ioThreadQuota,
      'ioThreadScheds': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneIoThreadSched>, List<Map<String, dynamic>>>(ioThreadScheds, (value) => pulumi.Input.encodeList<DomainCpuTuneIoThreadSched, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryTunes': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneMemoryTune>, List<Map<String, dynamic>>>(memoryTunes, (value) => pulumi.Input.encodeList<DomainCpuTuneMemoryTune, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': ?period,
      'quota': ?quota,
      'shares': ?shares,
      'vcpuPins': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneVcpuPin>, List<Map<String, dynamic>>>(vcpuPins, (value) => pulumi.Input.encodeList<DomainCpuTuneVcpuPin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vcpuScheds': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneVcpuSched>, List<Map<String, dynamic>>>(vcpuScheds, (value) => pulumi.Input.encodeList<DomainCpuTuneVcpuSched, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainCpuTune.fromMap(Map<String, dynamic> map) {
    return DomainCpuTune(
      cacheTunes: map['cacheTunes'] == null ? null : (pulumi.Input.decodeList<DomainCpuTuneCacheTune>(map['cacheTunes']!, (value) => DomainCpuTuneCacheTune.fromMap((value as Map).cast<String, dynamic>()))).input(),
      emulatorPeriod: map['emulatorPeriod'] == null ? null : (map['emulatorPeriod']! as double).input(),
      emulatorPin: map['emulatorPin'] == null ? null : (DomainCpuTuneEmulatorPin.fromMap((map['emulatorPin']! as Map).cast<String, dynamic>())).input(),
      emulatorQuota: map['emulatorQuota'] == null ? null : (map['emulatorQuota']! as double).input(),
      emulatorSched: map['emulatorSched'] == null ? null : (DomainCpuTuneEmulatorSched.fromMap((map['emulatorSched']! as Map).cast<String, dynamic>())).input(),
      globalPeriod: map['globalPeriod'] == null ? null : (map['globalPeriod']! as double).input(),
      globalQuota: map['globalQuota'] == null ? null : (map['globalQuota']! as double).input(),
      ioThreadPeriod: map['ioThreadPeriod'] == null ? null : (map['ioThreadPeriod']! as double).input(),
      ioThreadPins: map['ioThreadPins'] == null ? null : (pulumi.Input.decodeList<DomainCpuTuneIoThreadPin>(map['ioThreadPins']!, (value) => DomainCpuTuneIoThreadPin.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ioThreadQuota: map['ioThreadQuota'] == null ? null : (map['ioThreadQuota']! as double).input(),
      ioThreadScheds: map['ioThreadScheds'] == null ? null : (pulumi.Input.decodeList<DomainCpuTuneIoThreadSched>(map['ioThreadScheds']!, (value) => DomainCpuTuneIoThreadSched.fromMap((value as Map).cast<String, dynamic>()))).input(),
      memoryTunes: map['memoryTunes'] == null ? null : (pulumi.Input.decodeList<DomainCpuTuneMemoryTune>(map['memoryTunes']!, (value) => DomainCpuTuneMemoryTune.fromMap((value as Map).cast<String, dynamic>()))).input(),
      period: map['period'] == null ? null : (map['period']! as double).input(),
      quota: map['quota'] == null ? null : (map['quota']! as double).input(),
      shares: map['shares'] == null ? null : (map['shares']! as double).input(),
      vcpuPins: map['vcpuPins'] == null ? null : (pulumi.Input.decodeList<DomainCpuTuneVcpuPin>(map['vcpuPins']!, (value) => DomainCpuTuneVcpuPin.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vcpuScheds: map['vcpuScheds'] == null ? null : (pulumi.Input.decodeList<DomainCpuTuneVcpuSched>(map['vcpuScheds']!, (value) => DomainCpuTuneVcpuSched.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

