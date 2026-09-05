// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_iommu_driver_granule.dart';

class DomainDevicesIommuDriver {
  /// Configures the address width bits for the IOMMU driver.
  final pulumi.Input<double?>? awBits;
  /// Sets the caching mode for the IOMMU device.
  final pulumi.Input<String?>? cachingMode;
  /// Indicates if DMA address translation is enabled for the IOMMU driver.
  final pulumi.Input<String?>? dmaTranslation;
  /// Configures the EIM (External Interrupt Management) setting for the IOMMU driver.
  final pulumi.Input<String?>? eim;
  final pulumi.Input<DomainDevicesIommuDriverGranule?>? granule;
  /// Sets the interrupt remapping feature for the IOMMU driver, allowing for improved handling of interrupts.
  final pulumi.Input<String?>? intRemap;
  /// Enables the IOTLB (Input/Output Translation Lookaside Buffer) feature for the IOMMU driver, optimizing memory translation for I/O devices.
  final pulumi.Input<String?>? iotlb;
  /// Controls the passthrough capability of the IOMMU driver, allowing direct device assignments.
  final pulumi.Input<String?>? passthrough;
  final pulumi.Input<double?>? pciBus;
  /// Configures the XT (Extended Translation) support for the IOMMU driver, enabling advanced memory translation features.
  final pulumi.Input<String?>? xtSup;

  /// Creates a new [DomainDevicesIommuDriver].
  /// [awBits] Configures the address width bits for the IOMMU driver.
  /// [cachingMode] Sets the caching mode for the IOMMU device.
  /// [dmaTranslation] Indicates if DMA address translation is enabled for the IOMMU driver.
  /// [eim] Configures the EIM (External Interrupt Management) setting for the IOMMU driver.
  /// [granule] Optional.
  /// [intRemap] Sets the interrupt remapping feature for the IOMMU driver, allowing for improved handling of interrupts.
  /// [iotlb] Enables the IOTLB (Input/Output Translation Lookaside Buffer) feature for the IOMMU driver, optimizing memory translation for I/O devices.
  /// [passthrough] Controls the passthrough capability of the IOMMU driver, allowing direct device assignments.
  /// [pciBus] Optional.
  /// [xtSup] Configures the XT (Extended Translation) support for the IOMMU driver, enabling advanced memory translation features.
  const DomainDevicesIommuDriver({
    this.awBits,
    this.cachingMode,
    this.dmaTranslation,
    this.eim,
    this.granule,
    this.intRemap,
    this.iotlb,
    this.passthrough,
    this.pciBus,
    this.xtSup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awBits': ?awBits,
      'cachingMode': ?cachingMode,
      'dmaTranslation': ?dmaTranslation,
      'eim': ?eim,
      'granule': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommuDriverGranule, Map<String, dynamic>>(granule, (value) => value.toMap()),
      'intRemap': ?intRemap,
      'iotlb': ?iotlb,
      'passthrough': ?passthrough,
      'pciBus': ?pciBus,
      'xtSup': ?xtSup,
    };
  }

  factory DomainDevicesIommuDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommuDriver(
      awBits: (() { final guardedValue = map['awBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      cachingMode: (() { final guardedValue = map['cachingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dmaTranslation: (() { final guardedValue = map['dmaTranslation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eim: (() { final guardedValue = map['eim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      granule: (() { final guardedValue = map['granule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommuDriverGranule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intRemap: (() { final guardedValue = map['intRemap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iotlb: (() { final guardedValue = map['iotlb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passthrough: (() { final guardedValue = map['passthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pciBus: (() { final guardedValue = map['pciBus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      xtSup: (() { final guardedValue = map['xtSup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
