// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_scanners_base_response_configuration.dart';

/// The Microsoft Defender for Container K8s VM host scanning configuration
class DefenderForContainersAwsOfferingResponseVmScanners {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;
  /// Configuration for VM scanning
  final pulumi.Input<VmScannersBaseResponseConfiguration>? configuration;
  /// Is VM scanning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForContainersAwsOfferingResponseVmScanners].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  DefenderForContainersAwsOfferingResponseVmScanners({
    this.cloudRoleArn,
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<VmScannersBaseResponseConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForContainersAwsOfferingResponseVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponseVmScanners(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : (map['cloudRoleArn']! as String).input(),
      configuration: map['configuration'] == null ? null : (VmScannersBaseResponseConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

