// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemDriver {
  /// Enables or disables Address Translation Services (ATS) for the filesystem driver.
  final String? ats;
  /// Sets the format type for the filesystem handled by the driver.
  final String? format;
  /// Indicates whether the I/O Memory Management Unit (IOMMU) is enabled for the filesystem driver.
  final String? iommu;
  /// Configures the name of the driver for the filesystem.
  final String? name;
  /// Determines whether the filesystem driver uses packed operations.
  final String? packed;
  /// Enables page per virtqueue settings for the filesystem driver.
  final String? pagePerVq;
  /// Configures the queue settings for the filesystem driver.
  final double? queue;
  /// Specifies the type of the filesystem driver being used.
  final String? type;
  /// Sets the write policy for the filesystem driver.
  final String? wrPolicy;

  /// Creates a new [DomainDevicesFilesystemDriver].
  /// [ats] Enables or disables Address Translation Services (ATS) for the filesystem driver.
  /// [format] Sets the format type for the filesystem handled by the driver.
  /// [iommu] Indicates whether the I/O Memory Management Unit (IOMMU) is enabled for the filesystem driver.
  /// [name] Configures the name of the driver for the filesystem.
  /// [packed] Determines whether the filesystem driver uses packed operations.
  /// [pagePerVq] Enables page per virtqueue settings for the filesystem driver.
  /// [queue] Configures the queue settings for the filesystem driver.
  /// [type] Specifies the type of the filesystem driver being used.
  /// [wrPolicy] Sets the write policy for the filesystem driver.
  DomainDevicesFilesystemDriver({
    this.ats,
    this.format,
    this.iommu,
    this.name,
    this.packed,
    this.pagePerVq,
    this.queue,
    this.type,
    this.wrPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ats': ?ats,
      'format': ?format,
      'iommu': ?iommu,
      'name': ?name,
      'packed': ?packed,
      'pagePerVq': ?pagePerVq,
      'queue': ?queue,
      'type': ?type,
      'wrPolicy': ?wrPolicy,
    };
  }

  factory DomainDevicesFilesystemDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemDriver(
      ats: map['ats'] == null ? null : map['ats'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      iommu: map['iommu'] == null ? null : map['iommu'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      packed: map['packed'] == null ? null : map['packed'] as String,
      pagePerVq: map['pagePerVq'] == null ? null : map['pagePerVq'] as String,
      queue: map['queue'] == null ? null : map['queue'] as double,
      type: map['type'] == null ? null : map['type'] as String,
      wrPolicy: map['wrPolicy'] == null ? null : map['wrPolicy'] as String,
    );
  }
}

