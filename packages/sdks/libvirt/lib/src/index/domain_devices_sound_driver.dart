// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSoundDriver {
  /// This field determines whether the ATS feature is enabled for the sound device driver in the domain.
  final pulumi.Input<String?>? ats;
  /// This field configures the IOMMU settings for the sound device driver in the guest domain.
  final pulumi.Input<String?>? iommu;
  /// This field enables or disables packed mode for the sound device driver configuration in the domain.
  final pulumi.Input<String?>? packed;
  /// This field sets the page per virtual queue attribute for the sound device driver in the domain.
  final pulumi.Input<String?>? pagePerVq;

  /// Creates a new [DomainDevicesSoundDriver].
  /// [ats] This field determines whether the ATS feature is enabled for the sound device driver in the domain.
  /// [iommu] This field configures the IOMMU settings for the sound device driver in the guest domain.
  /// [packed] This field enables or disables packed mode for the sound device driver configuration in the domain.
  /// [pagePerVq] This field sets the page per virtual queue attribute for the sound device driver in the domain.
  const DomainDevicesSoundDriver({
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

  factory DomainDevicesSoundDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSoundDriver(
      ats: (() { final guardedValue = map['ats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packed: (() { final guardedValue = map['packed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagePerVq: (() { final guardedValue = map['pagePerVq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
