// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesMemorydevDriver {
  final pulumi.Input<String?>? ats;
  final pulumi.Input<String?>? iommu;
  final pulumi.Input<String?>? packed;
  final pulumi.Input<String?>? pagePerVq;

  /// Creates a new [DomainDevicesMemorydevDriver].
  /// [ats] Optional.
  /// [iommu] Optional.
  /// [packed] Optional.
  /// [pagePerVq] Optional.
  const DomainDevicesMemorydevDriver({
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

  factory DomainDevicesMemorydevDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevDriver(
      ats: (() { final guardedValue = map['ats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packed: (() { final guardedValue = map['packed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagePerVq: (() { final guardedValue = map['pagePerVq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
