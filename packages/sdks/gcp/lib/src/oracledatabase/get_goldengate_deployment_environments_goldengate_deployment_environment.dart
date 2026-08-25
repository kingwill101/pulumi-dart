// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment {
  /// Whether auto scaling is enabled by default for the Goldengate Deployment Environment resource.
  final pulumi.Input<bool> autoScalingEnabled;
  /// The category of the Goldengate Deployment Environment resource.
  final pulumi.Input<String> category;
  /// The default CPU core count of the Goldengate Deployment Environment resource.
  final pulumi.Input<int> defaultCpuCoreCount;
  /// The display name of the Goldengate Deployment Environment resource.
  final pulumi.Input<String> displayName;
  /// The environment type of the Goldengate Deployment Environment resource.
  final pulumi.Input<String> environmentType;
  /// The max CPU core count of the Goldengate Deployment Environment resource.
  final pulumi.Input<int> maxCpuCoreCount;
  /// The memory per CPU core in GBs of the Goldengate Deployment Environment resource.
  final pulumi.Input<int> memoryGbPerCpuCore;
  /// The min CPU core count of the Goldengate Deployment Environment resource.
  final pulumi.Input<int> minCpuCoreCount;
  /// The name of the Goldengate Deployment Environment resource.
  final pulumi.Input<String> name;
  /// The network bandwidth per CPU core in Gbps of the Goldengate Deployment Environment resource.
  final pulumi.Input<int> networkBandwidthGbpsPerCpuCore;
  /// The storage usage limit per CPU core in GBs of the Goldengate Deployment Environment resource.
  final pulumi.Input<int> storageUsageLimitGbPerCpuCore;

  /// Creates a new [GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment].
  /// [autoScalingEnabled] Whether auto scaling is enabled by default for the Goldengate Deployment Environment resource.
  /// [category] The category of the Goldengate Deployment Environment resource.
  /// [defaultCpuCoreCount] The default CPU core count of the Goldengate Deployment Environment resource.
  /// [displayName] The display name of the Goldengate Deployment Environment resource.
  /// [environmentType] The environment type of the Goldengate Deployment Environment resource.
  /// [maxCpuCoreCount] The max CPU core count of the Goldengate Deployment Environment resource.
  /// [memoryGbPerCpuCore] The memory per CPU core in GBs of the Goldengate Deployment Environment resource.
  /// [minCpuCoreCount] The min CPU core count of the Goldengate Deployment Environment resource.
  /// [name] The name of the Goldengate Deployment Environment resource.
  /// [networkBandwidthGbpsPerCpuCore] The network bandwidth per CPU core in Gbps of the Goldengate Deployment Environment resource.
  /// [storageUsageLimitGbPerCpuCore] The storage usage limit per CPU core in GBs of the Goldengate Deployment Environment resource.
  const GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment({
    required this.autoScalingEnabled,
    required this.category,
    required this.defaultCpuCoreCount,
    required this.displayName,
    required this.environmentType,
    required this.maxCpuCoreCount,
    required this.memoryGbPerCpuCore,
    required this.minCpuCoreCount,
    required this.name,
    required this.networkBandwidthGbpsPerCpuCore,
    required this.storageUsageLimitGbPerCpuCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingEnabled': autoScalingEnabled,
      'category': category,
      'defaultCpuCoreCount': defaultCpuCoreCount,
      'displayName': displayName,
      'environmentType': environmentType,
      'maxCpuCoreCount': maxCpuCoreCount,
      'memoryGbPerCpuCore': memoryGbPerCpuCore,
      'minCpuCoreCount': minCpuCoreCount,
      'name': name,
      'networkBandwidthGbpsPerCpuCore': networkBandwidthGbpsPerCpuCore,
      'storageUsageLimitGbPerCpuCore': storageUsageLimitGbPerCpuCore,
    };
  }

  factory GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment(
      autoScalingEnabled: pulumi.Input.fromValue(map['autoScalingEnabled'] as bool),
      category: pulumi.Input.fromValue(map['category'] as String),
      defaultCpuCoreCount: pulumi.Input.fromValue((map['defaultCpuCoreCount'] as num).toInt()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      maxCpuCoreCount: pulumi.Input.fromValue((map['maxCpuCoreCount'] as num).toInt()),
      memoryGbPerCpuCore: pulumi.Input.fromValue((map['memoryGbPerCpuCore'] as num).toInt()),
      minCpuCoreCount: pulumi.Input.fromValue((map['minCpuCoreCount'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkBandwidthGbpsPerCpuCore: pulumi.Input.fromValue((map['networkBandwidthGbpsPerCpuCore'] as num).toInt()),
      storageUsageLimitGbPerCpuCore: pulumi.Input.fromValue((map['storageUsageLimitGbPerCpuCore'] as num).toInt()),
    );
  }
}
