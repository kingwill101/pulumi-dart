// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_scanners_base_configuration.dart';

/// The Microsoft Defender for CSPM offering VM scanning configuration
class DefenderCspmAwsOfferingVmScanners {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;

  /// Configuration for VM scanning
  final pulumi.Input<VmScannersBaseConfiguration>? configuration;

  /// Is VM scanning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderCspmAwsOfferingVmScanners].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  DefenderCspmAwsOfferingVmScanners({
    this.cloudRoleArn,
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            VmScannersBaseConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmAwsOfferingVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingVmScanners(
      cloudRoleArn: (() {
        final guardedValue = map['cloudRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VmScannersBaseConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
