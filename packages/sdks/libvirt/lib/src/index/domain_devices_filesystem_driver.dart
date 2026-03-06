// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemDriver {
  /// Enables or disables Address Translation Services (ATS) for the filesystem driver.
  final pulumi.Input<String>? ats;
  /// Sets the format type for the filesystem handled by the driver.
  final pulumi.Input<String>? format;
  /// Indicates whether the I/O Memory Management Unit (IOMMU) is enabled for the filesystem driver.
  final pulumi.Input<String>? iommu;
  /// Configures the name of the driver for the filesystem.
  final pulumi.Input<String>? name;
  /// Determines whether the filesystem driver uses packed operations.
  final pulumi.Input<String>? packed;
  /// Enables page per virtqueue settings for the filesystem driver.
  final pulumi.Input<String>? pagePerVq;
  /// Configures the queue settings for the filesystem driver.
  final pulumi.Input<double>? queue;
  /// Specifies the type of the filesystem driver being used.
  final pulumi.Input<String>? type;
  /// Sets the write policy for the filesystem driver.
  final pulumi.Input<String>? wrPolicy;

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
  const DomainDevicesFilesystemDriver({
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
      ats: (() { final guardedValue = map['ats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packed: (() { final guardedValue = map['packed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagePerVq: (() { final guardedValue = map['pagePerVq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queue: (() { final guardedValue = map['queue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wrPolicy: (() { final guardedValue = map['wrPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

