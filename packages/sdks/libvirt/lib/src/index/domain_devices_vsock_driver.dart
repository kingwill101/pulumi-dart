// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesVsockDriver {
  /// Enables or disables Address Translation Services (ATS) for the vsock device driver.
  final pulumi.Input<String>? ats;
  /// Controls whether IOMMU support is enabled for the vsock device driver.
  final pulumi.Input<String>? iommu;
  /// Determines if the driver supports packed queues for the vsock device.
  final pulumi.Input<String>? packed;
  /// Configures the use of a page per Virtqueue (VQ) for the vsock device driver.
  final pulumi.Input<String>? pagePerVq;

  /// Creates a new [DomainDevicesVsockDriver].
  /// [ats] Enables or disables Address Translation Services (ATS) for the vsock device driver.
  /// [iommu] Controls whether IOMMU support is enabled for the vsock device driver.
  /// [packed] Determines if the driver supports packed queues for the vsock device.
  /// [pagePerVq] Configures the use of a page per Virtqueue (VQ) for the vsock device driver.
  DomainDevicesVsockDriver({
    this.ats,
    this.iommu,
    this.packed,
    this.pagePerVq,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ats': ?ats,
      'iommu': ?iommu,
      'packed': ?packed,
      'pagePerVq': ?pagePerVq,
    };
  }

  factory DomainDevicesVsockDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVsockDriver(
      ats: map['ats'] == null ? null : (map['ats']! as String).input(),
      iommu: map['iommu'] == null ? null : (map['iommu']! as String).input(),
      packed: map['packed'] == null ? null : (map['packed']! as String).input(),
      pagePerVq: map['pagePerVq'] == null ? null : (map['pagePerVq']! as String).input(),
    );
  }
}

