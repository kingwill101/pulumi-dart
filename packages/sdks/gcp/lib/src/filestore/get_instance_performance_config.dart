// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_performance_config_fixed_iop.dart';
import 'get_instance_performance_config_iops_per_tb.dart';

class GetInstancePerformanceConfig {
  /// The instance will have a fixed provisioned IOPS value,
  /// which will remain constant regardless of instance
  /// capacity.
  final pulumi.Input<List<GetInstancePerformanceConfigFixedIop>> fixedIops;
  /// The instance provisioned IOPS will change dynamically
  /// based on the capacity of the instance.
  final pulumi.Input<List<GetInstancePerformanceConfigIopsPerTb>> iopsPerTbs;

  /// Creates a new [GetInstancePerformanceConfig].
  /// [fixedIops] The instance will have a fixed provisioned IOPS value,
  /// [iopsPerTbs] The instance provisioned IOPS will change dynamically
  GetInstancePerformanceConfig({
    required this.fixedIops,
    required this.iopsPerTbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIops': pulumi.Input.mapInputValue<List<GetInstancePerformanceConfigFixedIop>, List<Map<String, dynamic>>>(fixedIops, (value) => pulumi.Input.encodeList<GetInstancePerformanceConfigFixedIop, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iopsPerTbs': pulumi.Input.mapInputValue<List<GetInstancePerformanceConfigIopsPerTb>, List<Map<String, dynamic>>>(iopsPerTbs, (value) => pulumi.Input.encodeList<GetInstancePerformanceConfigIopsPerTb, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstancePerformanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancePerformanceConfig(
      fixedIops: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancePerformanceConfigFixedIop>(map['fixedIops']!, (value) => GetInstancePerformanceConfigFixedIop.fromMap((value as Map).cast<String, dynamic>()))),
      iopsPerTbs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancePerformanceConfigIopsPerTb>(map['iopsPerTbs']!, (value) => GetInstancePerformanceConfigIopsPerTb.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

