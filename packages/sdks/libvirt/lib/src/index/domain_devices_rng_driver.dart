// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngDriver {
  /// Enables or disables Address Translation Services (ATS) for the random number generator driver.
  final pulumi.Input<String>? ats;
  /// Enables or disables I/O Memory Management Unit (IOMMU) for the random number generator driver.
  final pulumi.Input<String>? iommu;
  /// Indicates whether packed ring buffers are used for the random number generator driver.
  final pulumi.Input<String>? packed;
  /// Configures the page per virtual queue setting for the random number generator driver.
  final pulumi.Input<String>? pagePerVq;

  /// Creates a new [DomainDevicesRngDriver].
  /// [ats] Enables or disables Address Translation Services (ATS) for the random number generator driver.
  /// [iommu] Enables or disables I/O Memory Management Unit (IOMMU) for the random number generator driver.
  /// [packed] Indicates whether packed ring buffers are used for the random number generator driver.
  /// [pagePerVq] Configures the page per virtual queue setting for the random number generator driver.
  const DomainDevicesRngDriver({
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

  factory DomainDevicesRngDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngDriver(
      ats: (() { final guardedValue = map['ats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packed: (() { final guardedValue = map['packed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagePerVq: (() { final guardedValue = map['pagePerVq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

