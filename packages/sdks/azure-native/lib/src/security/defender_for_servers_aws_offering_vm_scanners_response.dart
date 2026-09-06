// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_scanners_base_configuration_response.dart';

/// The Microsoft Defender for Server VM scanning configuration
class DefenderForServersAwsOfferingVmScannersResponse {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String?>? cloudRoleArn;
  /// Configuration for VM scanning
  final pulumi.Input<VmScannersBaseConfigurationResponse?>? configuration;
  /// Is VM scanning enabled
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DefenderForServersAwsOfferingVmScannersResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  const DefenderForServersAwsOfferingVmScannersResponse({
    this.cloudRoleArn,
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<VmScannersBaseConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingVmScannersResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingVmScannersResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmScannersBaseConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
