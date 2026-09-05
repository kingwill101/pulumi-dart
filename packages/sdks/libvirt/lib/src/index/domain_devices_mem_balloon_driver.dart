// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesMemBalloonDriver {
  /// Enables the ATS (Address Translation Services) feature for the memory balloon device driver.
  final pulumi.Input<String?>? ats;
  /// Configures the use of IOMMU support by the memory balloon device driver.
  final pulumi.Input<String?>? iommu;
  /// Sets the packed setting for the memory balloon device driver, allowing for optimized memory usage.
  final pulumi.Input<String?>? packed;
  /// Configures the use of per-virtqueue pages for the memory balloon device driver, enhancing performance.
  final pulumi.Input<String?>? pagePerVq;

  /// Creates a new [DomainDevicesMemBalloonDriver].
  /// [ats] Enables the ATS (Address Translation Services) feature for the memory balloon device driver.
  /// [iommu] Configures the use of IOMMU support by the memory balloon device driver.
  /// [packed] Sets the packed setting for the memory balloon device driver, allowing for optimized memory usage.
  /// [pagePerVq] Configures the use of per-virtqueue pages for the memory balloon device driver, enhancing performance.
  const DomainDevicesMemBalloonDriver({
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
      ats: (() { final guardedValue = map['ats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packed: (() { final guardedValue = map['packed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagePerVq: (() { final guardedValue = map['pagePerVq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
