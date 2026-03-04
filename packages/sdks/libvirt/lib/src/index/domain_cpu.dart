// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_cache.dart';
import 'domain_cpu_feature.dart';
import 'domain_cpu_max_phys_addr.dart';
import 'domain_cpu_numa.dart';
import 'domain_cpu_topology.dart';

class DomainCpu {
  /// Sets caching parameters for the domain's CPU, affecting performance characteristics.
  final pulumi.Input<DomainCpuCache>? cache;

  /// Indicates whether to perform additional checks on the CPU model and features.
  final pulumi.Input<String>? check;

  /// Lists deprecated CPU features that should not be used in the domain configuration.
  final pulumi.Input<String>? deprecatedFeatures;

  /// Defines specific CPU features that can be enabled or disabled for the domain.
  final pulumi.Input<List<DomainCpuFeature>>? features;

  /// Configures CPU model matching options to optimize performance and compatibility.
  final pulumi.Input<String>? match;

  /// Specifies the maximum physical address space size accessible to the domain.
  final pulumi.Input<DomainCpuMaxPhysAddr>? maxPhysAddr;

  /// Configures whether the CPU settings can be changed while the domain is running.
  final pulumi.Input<bool>? migratable;

  /// Defines the operational mode for the CPU configuration, affecting virtualization behavior.
  final pulumi.Input<String>? mode;

  /// Specifies the CPU model used by the domain, influencing its performance characteristics.
  final pulumi.Input<String>? model;

  /// Sets the CPU model fallback configurations in case the specified model is unavailable.
  final pulumi.Input<String>? modelFallback;

  /// Determines the vendor ID for the CPU model, affecting compatibility.
  final pulumi.Input<String>? modelVendorId;

  /// Configures NUMA (Non-Uniform Memory Access) settings for balancing memory allocation.
  final pulumi.Input<DomainCpuNuma>? numa;

  /// Configures the CPU topology for the domain, specifying the physical arrangement of CPUs.
  final pulumi.Input<DomainCpuTopology>? topology;

  /// Specifies the vendor name of the CPU model being used for the domain.
  final pulumi.Input<String>? vendor;

  /// Creates a new [DomainCpu].
  /// [cache] Sets caching parameters for the domain's CPU, affecting performance characteristics.
  /// [check] Indicates whether to perform additional checks on the CPU model and features.
  /// [deprecatedFeatures] Lists deprecated CPU features that should not be used in the domain configuration.
  /// [features] Defines specific CPU features that can be enabled or disabled for the domain.
  /// [match] Configures CPU model matching options to optimize performance and compatibility.
  /// [maxPhysAddr] Specifies the maximum physical address space size accessible to the domain.
  /// [migratable] Configures whether the CPU settings can be changed while the domain is running.
  /// [mode] Defines the operational mode for the CPU configuration, affecting virtualization behavior.
  /// [model] Specifies the CPU model used by the domain, influencing its performance characteristics.
  /// [modelFallback] Sets the CPU model fallback configurations in case the specified model is unavailable.
  /// [modelVendorId] Determines the vendor ID for the CPU model, affecting compatibility.
  /// [numa] Configures NUMA (Non-Uniform Memory Access) settings for balancing memory allocation.
  /// [topology] Configures the CPU topology for the domain, specifying the physical arrangement of CPUs.
  /// [vendor] Specifies the vendor name of the CPU model being used for the domain.
  DomainCpu({
    this.cache,
    this.check,
    this.deprecatedFeatures,
    this.features,
    this.match,
    this.maxPhysAddr,
    this.migratable,
    this.mode,
    this.model,
    this.modelFallback,
    this.modelVendorId,
    this.numa,
    this.topology,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache':
          ?pulumi.Input.mapOptionalInputValue<
            DomainCpuCache,
            Map<String, dynamic>
          >(cache, (value) => value.toMap()),
      'check': ?check,
      'deprecatedFeatures': ?deprecatedFeatures,
      'features':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainCpuFeature>,
            List<Map<String, dynamic>>
          >(
            features,
            (value) =>
                pulumi.Input.encodeList<DomainCpuFeature, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'match': ?match,
      'maxPhysAddr':
          ?pulumi.Input.mapOptionalInputValue<
            DomainCpuMaxPhysAddr,
            Map<String, dynamic>
          >(maxPhysAddr, (value) => value.toMap()),
      'migratable': ?migratable,
      'mode': ?mode,
      'model': ?model,
      'modelFallback': ?modelFallback,
      'modelVendorId': ?modelVendorId,
      'numa':
          ?pulumi.Input.mapOptionalInputValue<
            DomainCpuNuma,
            Map<String, dynamic>
          >(numa, (value) => value.toMap()),
      'topology':
          ?pulumi.Input.mapOptionalInputValue<
            DomainCpuTopology,
            Map<String, dynamic>
          >(topology, (value) => value.toMap()),
      'vendor': ?vendor,
    };
  }

  factory DomainCpu.fromMap(Map<String, dynamic> map) {
    return DomainCpu(
      cache: (() {
        final guardedValue = map['cache'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainCpuCache.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      check: (() {
        final guardedValue = map['check'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deprecatedFeatures: (() {
        final guardedValue = map['deprecatedFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      features: (() {
        final guardedValue = map['features'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainCpuFeature>(
            guardedValue,
            (value) => DomainCpuFeature.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      match: (() {
        final guardedValue = map['match'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxPhysAddr: (() {
        final guardedValue = map['maxPhysAddr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainCpuMaxPhysAddr.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      migratable: (() {
        final guardedValue = map['migratable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelFallback: (() {
        final guardedValue = map['modelFallback'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelVendorId: (() {
        final guardedValue = map['modelVendorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numa: (() {
        final guardedValue = map['numa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainCpuNuma.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      topology: (() {
        final guardedValue = map['topology'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainCpuTopology.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vendor: (() {
        final guardedValue = map['vendor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
