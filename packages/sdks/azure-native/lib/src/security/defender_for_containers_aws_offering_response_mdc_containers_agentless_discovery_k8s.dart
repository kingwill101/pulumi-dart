// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender container agentless discovery K8s configuration
class DefenderForContainersAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;

  /// Is Microsoft Defender container agentless discovery K8s enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForContainersAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is Microsoft Defender container agentless discovery K8s enabled
  DefenderForContainersAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderForContainersAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenderForContainersAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s(
      cloudRoleArn: (() {
        final guardedValue = map['cloudRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
