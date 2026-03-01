// ignore_for_file: unused_element, unnecessary_cast

import 'vm_scanners_base_response_configuration.dart';

/// The Microsoft Defender for Server VM scanning configuration
class DefenderForServersAwsOfferingResponseVmScanners {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Configuration for VM scanning
  final VmScannersBaseResponseConfiguration? configuration;
  /// Is VM scanning enabled
  final bool? enabled;

  /// Creates a new [DefenderForServersAwsOfferingResponseVmScanners].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  DefenderForServersAwsOfferingResponseVmScanners({
    this.cloudRoleArn,
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingResponseVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingResponseVmScanners(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      configuration: map['configuration'] == null ? null : VmScannersBaseResponseConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

