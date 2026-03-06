// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_configmanagement_config_sync_deployment_override_container.dart';

class FeatureMembershipConfigmanagementConfigSyncDeploymentOverride {
  /// The override configurations for the containers in the Deployment. Structure is documented below.
  final pulumi.Input<List<FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer>>? containers;
  /// The name of the Deployment.
  final pulumi.Input<String>? deploymentName;
  /// The namespace of the Deployment.
  final pulumi.Input<String>? deploymentNamespace;

  /// Creates a new [FeatureMembershipConfigmanagementConfigSyncDeploymentOverride].
  /// [containers] The override configurations for the containers in the Deployment. Structure is documented below.
  /// [deploymentName] The name of the Deployment.
  /// [deploymentNamespace] The namespace of the Deployment.
  const FeatureMembershipConfigmanagementConfigSyncDeploymentOverride({
    this.containers,
    this.deploymentName,
    this.deploymentNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentName': ?deploymentName,
      'deploymentNamespace': ?deploymentNamespace,
    };
  }

  factory FeatureMembershipConfigmanagementConfigSyncDeploymentOverride.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagementConfigSyncDeploymentOverride(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer>(guardedValue, (value) => FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deploymentName: (() { final guardedValue = map['deploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentNamespace: (() { final guardedValue = map['deploymentNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

