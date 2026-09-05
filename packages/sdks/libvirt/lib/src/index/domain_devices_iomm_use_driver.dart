// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_iomm_use_driver_granule.dart';

class DomainDevicesIommUseDriver {
  /// Sets the IOMMU address width in bits (aw_bits) used for DMA mappings; value is a positive integer appropriate to the chosen IOMMU model (for example, 39 or 48).
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<double?>? awBits;
  /// Enables or disables IOMMU page table caching mode, with valid values "on" or "off" (presence controls whether the device advertises caching to the guest).
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<String?>? cachingMode;
  /// Controls whether DMA translation is performed by the IOMMU, with valid values "on" or "off" (for example, "off" can approximate passthrough behavior).
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<String?>? dmaTranslation;
  /// Toggles extended interrupt mode (EIM) support for the IOMMU, with valid values "on" or "off".
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<String?>? eim;
  final pulumi.Input<DomainDevicesIommUseDriverGranule?>? granule;
  /// Enables or disables interrupt remapping for the IOMMU, with valid values "on" or "off".
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<String?>? intRemap;
  /// Controls whether the IOMMU exposes an IOTLB (I/O TLB) interface to the guest, with valid values "on" or "off".
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<String?>? iotlb;
  /// Selects passthrough mode for the IOMMU so that guest devices can bypass translation, with valid values "on" or "off".
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<String?>? passthrough;
  final pulumi.Input<double?>? pciBus;
  /// Toggles support for extended translation (xtsup) features of the IOMMU, with valid values "on" or "off".
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#iommu-devices&gt;
  final pulumi.Input<String?>? xtSup;

  /// Creates a new [DomainDevicesIommUseDriver].
  /// [awBits] Sets the IOMMU address width in bits (aw_bits) used for DMA mappings; value is a positive integer appropriate to the chosen IOMMU model (for example, 39 or 48).
  /// [cachingMode] Enables or disables IOMMU page table caching mode, with valid values "on" or "off" (presence controls whether the device advertises caching to the guest).
  /// [dmaTranslation] Controls whether DMA translation is performed by the IOMMU, with valid values "on" or "off" (for example, "off" can approximate passthrough behavior).
  /// [eim] Toggles extended interrupt mode (EIM) support for the IOMMU, with valid values "on" or "off".
  /// [granule] Optional.
  /// [intRemap] Enables or disables interrupt remapping for the IOMMU, with valid values "on" or "off".
  /// [iotlb] Controls whether the IOMMU exposes an IOTLB (I/O TLB) interface to the guest, with valid values "on" or "off".
  /// [passthrough] Selects passthrough mode for the IOMMU so that guest devices can bypass translation, with valid values "on" or "off".
  /// [pciBus] Optional.
  /// [xtSup] Toggles support for extended translation (xtsup) features of the IOMMU, with valid values "on" or "off".
  const DomainDevicesIommUseDriver({
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
      'granule': ?pulumi.Input.mapOptionalInputValue<DomainDevicesIommUseDriverGranule, Map<String, dynamic>>(granule, (value) => value.toMap()),
      'intRemap': ?intRemap,
      'iotlb': ?iotlb,
      'passthrough': ?passthrough,
      'pciBus': ?pciBus,
      'xtSup': ?xtSup,
    };
  }

  factory DomainDevicesIommUseDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommUseDriver(
      awBits: (() { final guardedValue = map['awBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      cachingMode: (() { final guardedValue = map['cachingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dmaTranslation: (() { final guardedValue = map['dmaTranslation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eim: (() { final guardedValue = map['eim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      granule: (() { final guardedValue = map['granule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesIommUseDriverGranule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intRemap: (() { final guardedValue = map['intRemap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iotlb: (() { final guardedValue = map['iotlb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passthrough: (() { final guardedValue = map['passthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pciBus: (() { final guardedValue = map['pciBus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      xtSup: (() { final guardedValue = map['xtSup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
