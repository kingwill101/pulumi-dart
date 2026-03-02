// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesMemBalloonDriver {
  /// Enables the ATS (Address Translation Services) feature for the memory balloon device driver.
  final pulumi.Input<String>? ats;
  /// Configures the use of IOMMU support by the memory balloon device driver.
  final pulumi.Input<String>? iommu;
  /// Sets the packed setting for the memory balloon device driver, allowing for optimized memory usage.
  final pulumi.Input<String>? packed;
  /// Configures the use of per-virtqueue pages for the memory balloon device driver, enhancing performance.
  final pulumi.Input<String>? pagePerVq;

  /// Creates a new [DomainDevicesMemBalloonDriver].
  /// [ats] Enables the ATS (Address Translation Services) feature for the memory balloon device driver.
  /// [iommu] Configures the use of IOMMU support by the memory balloon device driver.
  /// [packed] Sets the packed setting for the memory balloon device driver, allowing for optimized memory usage.
  /// [pagePerVq] Configures the use of per-virtqueue pages for the memory balloon device driver, enhancing performance.
  DomainDevicesMemBalloonDriver({
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

  factory DomainDevicesMemBalloonDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemBalloonDriver(
      ats: map['ats'] == null ? null : (map['ats'] as String).input(),
      iommu: map['iommu'] == null ? null : (map['iommu'] as String).input(),
      packed: map['packed'] == null ? null : (map['packed'] as String).input(),
      pagePerVq: map['pagePerVq'] == null ? null : (map['pagePerVq'] as String).input(),
    );
  }
}

