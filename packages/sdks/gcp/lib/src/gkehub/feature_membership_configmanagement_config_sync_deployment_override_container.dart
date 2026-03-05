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
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuLimit: (() { final guardedValue = map['cpuLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuRequest: (() { final guardedValue = map['cpuRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryLimit: (() { final guardedValue = map['memoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryRequest: (() { final guardedValue = map['memoryRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

