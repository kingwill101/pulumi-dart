// ignore_for_file: unused_element, unnecessary_cast

import 'vm_scanners_base_response_configuration.dart';

/// The Microsoft Defender for Server VM scanning configuration
class DefenderForServersGcpOfferingResponseVmScanners {
  /// Configuration for VM scanning
  final VmScannersBaseResponseConfiguration? configuration;
  /// Is VM scanning enabled
  final bool? enabled;

  /// Creates a new [DefenderForServersGcpOfferingResponseVmScanners].
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  DefenderForServersGcpOfferingResponseVmScanners({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingResponseVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingResponseVmScanners(
      configuration: map['configuration'] == null ? null : VmScannersBaseResponseConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

