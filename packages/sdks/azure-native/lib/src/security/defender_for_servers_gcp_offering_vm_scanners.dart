// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_scanners_base_configuration.dart';

/// The Microsoft Defender for Server VM scanning configuration
class DefenderForServersGcpOfferingVmScanners {
  /// Configuration for VM scanning
  final pulumi.Input<VmScannersBaseConfiguration>? configuration;
  /// Is VM scanning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForServersGcpOfferingVmScanners].
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  const DefenderForServersGcpOfferingVmScanners({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<VmScannersBaseConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingVmScanners(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmScannersBaseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
