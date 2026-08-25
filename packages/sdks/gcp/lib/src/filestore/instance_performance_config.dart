// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_performance_config_fixed_iops.dart';
import 'instance_performance_config_iops_per_tb.dart';

class InstancePerformanceConfig {
  /// The instance will have a fixed provisioned IOPS value,
  /// which will remain constant regardless of instance
  /// capacity.
  /// Structure is documented below.
  final pulumi.Input<InstancePerformanceConfigFixedIops?>? fixedIops;
  /// The instance provisioned IOPS will change dynamically
  /// based on the capacity of the instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePerformanceConfigIopsPerTb?>? iopsPerTb;

  /// Creates a new [InstancePerformanceConfig].
  /// [fixedIops] The instance will have a fixed provisioned IOPS value,
  /// [iopsPerTb] The instance provisioned IOPS will change dynamically
  const InstancePerformanceConfig({
    this.fixedIops,
    this.iopsPerTb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIops': ?pulumi.Input.mapOptionalInputValue<InstancePerformanceConfigFixedIops, Map<String, dynamic>>(fixedIops, (value) => value.toMap()),
      'iopsPerTb': ?pulumi.Input.mapOptionalInputValue<InstancePerformanceConfigIopsPerTb, Map<String, dynamic>>(iopsPerTb, (value) => value.toMap()),
    };
  }

  factory InstancePerformanceConfig.fromMap(Map<String, dynamic> map) {
    return InstancePerformanceConfig(
      fixedIops: (() { final guardedValue = map['fixedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePerformanceConfigFixedIops.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iopsPerTb: (() { final guardedValue = map['iopsPerTb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePerformanceConfigIopsPerTb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
