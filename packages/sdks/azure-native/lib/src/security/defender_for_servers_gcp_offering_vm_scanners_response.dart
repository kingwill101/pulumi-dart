// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_scanners_base_configuration_response.dart';

/// The Microsoft Defender for Server VM scanning configuration
class DefenderForServersGcpOfferingVmScannersResponse {
  /// Configuration for VM scanning
  final pulumi.Input<VmScannersBaseConfigurationResponse>? configuration;
  /// Is VM scanning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersGcpOfferingVmScannersResponse].
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  const DefenderForServersGcpOfferingVmScannersResponse({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<VmScannersBaseConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingVmScannersResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingVmScannersResponse(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmScannersBaseConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
