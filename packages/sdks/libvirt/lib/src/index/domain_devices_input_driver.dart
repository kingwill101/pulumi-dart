// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInputDriver {
  /// Controls the Address Translation Services (ATS) feature for the input device driver.
  final pulumi.Input<String>? ats;
  /// Enables or disables the IOMMU feature for the input device driver.
  final pulumi.Input<String>? iommu;
  /// Configures whether the input device driver uses packed ring.
  final pulumi.Input<String>? packed;
  /// Sets the page per virtual queue option for the input device driver.
  final pulumi.Input<String>? pagePerVq;

  /// Creates a new [DomainDevicesInputDriver].
  /// [ats] Controls the Address Translation Services (ATS) feature for the input device driver.
  /// [iommu] Enables or disables the IOMMU feature for the input device driver.
  /// [packed] Configures whether the input device driver uses packed ring.
  /// [pagePerVq] Sets the page per virtual queue option for the input device driver.
  const DomainDevicesInputDriver({
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

  factory DomainDevicesInputDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputDriver(
      ats: (() { final guardedValue = map['ats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packed: (() { final guardedValue = map['packed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagePerVq: (() { final guardedValue = map['pagePerVq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
