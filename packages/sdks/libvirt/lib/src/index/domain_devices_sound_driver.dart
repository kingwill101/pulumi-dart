// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSoundDriver {
  /// This field determines whether the ATS feature is enabled for the sound device driver in the domain.
  final String? ats;
  /// This field configures the IOMMU settings for the sound device driver in the guest domain.
  final String? iommu;
  /// This field enables or disables packed mode for the sound device driver configuration in the domain.
  final String? packed;
  /// This field sets the page per virtual queue attribute for the sound device driver in the domain.
  final String? pagePerVq;

  /// Creates a new [DomainDevicesSoundDriver].
  /// [ats] This field determines whether the ATS feature is enabled for the sound device driver in the domain.
  /// [iommu] This field configures the IOMMU settings for the sound device driver in the guest domain.
  /// [packed] This field enables or disables packed mode for the sound device driver configuration in the domain.
  /// [pagePerVq] This field sets the page per virtual queue attribute for the sound device driver in the domain.
  DomainDevicesSoundDriver({
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
      ats: map['ats'] == null ? null : map['ats'] as String,
      iommu: map['iommu'] == null ? null : map['iommu'] as String,
      packed: map['packed'] == null ? null : map['packed'] as String,
      pagePerVq: map['pagePerVq'] == null ? null : map['pagePerVq'] as String,
    );
  }
}

