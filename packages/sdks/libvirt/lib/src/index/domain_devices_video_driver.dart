// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesVideoDriver {
  /// Enables or disables Address Translation Services (ATS) for the video device driver.
  final pulumi.Input<String>? ats;
  /// Controls whether the IOMMU (Input/Output Memory Management Unit) is used by the video device driver.
  final pulumi.Input<String>? iommu;
  /// Specifies the name of the driver to be used for the video device.
  final pulumi.Input<String>? name;
  /// Determines if the driver supports packed queues for the video device.
  final pulumi.Input<String>? packed;
  /// Controls the use of a page per Virtqueue (VQ) for the video device driver.
  final pulumi.Input<String>? pagePerVq;
  /// Configures the VGA options for the video device driver.
  final pulumi.Input<String>? vgaConf;

  /// Creates a new [DomainDevicesVideoDriver].
  /// [ats] Enables or disables Address Translation Services (ATS) for the video device driver.
  /// [iommu] Controls whether the IOMMU (Input/Output Memory Management Unit) is used by the video device driver.
  /// [name] Specifies the name of the driver to be used for the video device.
  /// [packed] Determines if the driver supports packed queues for the video device.
  /// [pagePerVq] Controls the use of a page per Virtqueue (VQ) for the video device driver.
  /// [vgaConf] Configures the VGA options for the video device driver.
  DomainDevicesVideoDriver({
    this.ats,
    this.iommu,
    this.name,
    this.packed,
    this.pagePerVq,
    this.vgaConf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ats': ?ats,
      'iommu': ?iommu,
      'name': ?name,
      'packed': ?packed,
      'pagePerVq': ?pagePerVq,
      'vgaConf': ?vgaConf,
    };
  }

  factory DomainDevicesVideoDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideoDriver(
      ats: map['ats'] == null ? null : (map['ats'] as String).input(),
      iommu: map['iommu'] == null ? null : (map['iommu'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      packed: map['packed'] == null ? null : (map['packed'] as String).input(),
      pagePerVq: map['pagePerVq'] == null ? null : (map['pagePerVq'] as String).input(),
      vgaConf: map['vgaConf'] == null ? null : (map['vgaConf'] as String).input(),
    );
  }
}

