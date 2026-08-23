// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCapacityResponse {
  /// The remaining appliance-based storage in GB available for workload use. Measured in gibibytes.
  final pulumi.Input<double>? availableApplianceStorageGB;
  /// The remaining number of cores that are available in this cluster for workload use.
  final pulumi.Input<double>? availableCoreCount;
  /// The remaining machine or host-based storage in GB available for workload use. Measured in gibibytes.
  final pulumi.Input<double>? availableHostStorageGB;
  /// The remaining memory in GB that are available in this cluster for workload use. Measured in gibibytes.
  final pulumi.Input<double>? availableMemoryGB;
  /// The total appliance-based storage in GB supported by this cluster for workload use. Measured in gibibytes.
  final pulumi.Input<double>? totalApplianceStorageGB;
  /// The total number of cores that are supported by this cluster for workload use.
  final pulumi.Input<double>? totalCoreCount;
  /// The total machine or host-based storage in GB supported by this cluster for workload use. Measured in gibibytes.
  final pulumi.Input<double>? totalHostStorageGB;
  /// The total memory supported by this cluster for workload use. Measured in gibibytes.
  final pulumi.Input<double>? totalMemoryGB;

  /// Creates a new [ClusterCapacityResponse].
  /// [availableApplianceStorageGB] The remaining appliance-based storage in GB available for workload use. Measured in gibibytes.
  /// [availableCoreCount] The remaining number of cores that are available in this cluster for workload use.
  /// [availableHostStorageGB] The remaining machine or host-based storage in GB available for workload use. Measured in gibibytes.
  /// [availableMemoryGB] The remaining memory in GB that are available in this cluster for workload use. Measured in gibibytes.
  /// [totalApplianceStorageGB] The total appliance-based storage in GB supported by this cluster for workload use. Measured in gibibytes.
  /// [totalCoreCount] The total number of cores that are supported by this cluster for workload use.
  /// [totalHostStorageGB] The total machine or host-based storage in GB supported by this cluster for workload use. Measured in gibibytes.
  /// [totalMemoryGB] The total memory supported by this cluster for workload use. Measured in gibibytes.
  const ClusterCapacityResponse({
    this.availableApplianceStorageGB,
    this.availableCoreCount,
    this.availableHostStorageGB,
    this.availableMemoryGB,
    this.totalApplianceStorageGB,
    this.totalCoreCount,
    this.totalHostStorageGB,
    this.totalMemoryGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableApplianceStorageGB': ?availableApplianceStorageGB,
      'availableCoreCount': ?availableCoreCount,
      'availableHostStorageGB': ?availableHostStorageGB,
      'availableMemoryGB': ?availableMemoryGB,
      'totalApplianceStorageGB': ?totalApplianceStorageGB,
      'totalCoreCount': ?totalCoreCount,
      'totalHostStorageGB': ?totalHostStorageGB,
      'totalMemoryGB': ?totalMemoryGB,
    };
  }

  factory ClusterCapacityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterCapacityResponse(
      availableApplianceStorageGB: (() { final guardedValue = map['availableApplianceStorageGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      availableCoreCount: (() { final guardedValue = map['availableCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      availableHostStorageGB: (() { final guardedValue = map['availableHostStorageGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      availableMemoryGB: (() { final guardedValue = map['availableMemoryGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalApplianceStorageGB: (() { final guardedValue = map['totalApplianceStorageGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalCoreCount: (() { final guardedValue = map['totalCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalHostStorageGB: (() { final guardedValue = map['totalHostStorageGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalMemoryGB: (() { final guardedValue = map['totalMemoryGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
