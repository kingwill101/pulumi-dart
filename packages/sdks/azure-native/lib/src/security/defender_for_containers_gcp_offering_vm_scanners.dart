// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_scanners_base_configuration.dart';

/// The Microsoft Defender for Container K8s VM host scanning configuration
class DefenderForContainersGcpOfferingVmScanners {
  /// Configuration for VM scanning
  final pulumi.Input<VmScannersBaseConfiguration>? configuration;
  /// Is VM scanning enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderForContainersGcpOfferingVmScanners].
  /// [configuration] Configuration for VM scanning
  /// [enabled] Is VM scanning enabled
  DefenderForContainersGcpOfferingVmScanners({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<VmScannersBaseConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory DefenderForContainersGcpOfferingVmScanners.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOfferingVmScanners(
      configuration: map['configuration'] == null ? null : (VmScannersBaseConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

