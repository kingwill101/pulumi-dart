// ignore_for_file: unused_element, unnecessary_cast

import 'vm_scanners_base_response_configuration.dart';

/// The Microsoft Defender for CSPM VM scanning configuration
class DefenderCspmGcpOfferingResponseVmScanners {
  /// Configuration for VM scanning
  final VmScannersBaseResponseConfiguration? configuration;
  /// Is VM scanning enabled
  final bool? enabled;

  /// Creates a new [DefenderCspmGcpOfferingResponseVmScanners].
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  DefenderCspmGcpOfferingResponseVmScanners({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmGcpOfferingResponseVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingResponseVmScanners(
      configuration: map['configuration'] == null ? null : VmScannersBaseResponseConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

