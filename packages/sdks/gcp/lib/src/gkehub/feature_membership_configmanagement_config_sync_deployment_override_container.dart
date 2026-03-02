// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer {
  /// The name of the container.
  final pulumi.Input<String>? containerName;
  /// The CPU limit of the container.
  final pulumi.Input<String>? cpuLimit;
  /// The CPU request of the container.
  final pulumi.Input<String>? cpuRequest;
  /// The memory limit of the container.
  final pulumi.Input<String>? memoryLimit;
  /// The memory request of the container.
  final pulumi.Input<String>? memoryRequest;

  /// Creates a new [FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer].
  /// [containerName] The name of the container.
  /// [cpuLimit] The CPU limit of the container.
  /// [cpuRequest] The CPU request of the container.
  /// [memoryLimit] The memory limit of the container.
  /// [memoryRequest] The memory request of the container.
  FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer({
    this.containerName,
    this.cpuLimit,
    this.cpuRequest,
    this.memoryLimit,
    this.memoryRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'cpuLimit': ?cpuLimit,
      'cpuRequest': ?cpuRequest,
      'memoryLimit': ?memoryLimit,
      'memoryRequest': ?memoryRequest,
    };
  }

  factory FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer(
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      cpuLimit: map['cpuLimit'] == null ? null : (map['cpuLimit'] as String).input(),
      cpuRequest: map['cpuRequest'] == null ? null : (map['cpuRequest'] as String).input(),
      memoryLimit: map['memoryLimit'] == null ? null : (map['memoryLimit'] as String).input(),
      memoryRequest: map['memoryRequest'] == null ? null : (map['memoryRequest'] as String).input(),
    );
  }
}

