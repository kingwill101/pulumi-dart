// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_driver_io_threads.dart';
import 'domain_devices_disk_driver_metadata_cache.dart';

class DomainDevicesDiskDriver {
  /// Controls the Address Translation Services (ATS) for this disk device.
  final String? ats;
  /// Sets the caching mode for the disk, affecting performance characteristics.
  final String? cache;
  /// Configures whether copy-on-read functionality is enabled for the disk.
  final String? copyOnRead;
  /// Determines if zero-detect features are enabled for the disk's driver.
  final String? detectZeros;
  /// Controls the handling of discard operations by the disk driver.
  final String? discard;
  /// Indicates whether unreferenced blocks should be discarded.
  final String? discardNoUnref;
  /// Configures the policy for handling errors reported by the disk driver.
  final String? errorPolicy;
  /// Sets the event index for the disk driver, which can be used in event handling.
  final String? eventIdx;
  /// Configures the I/O threading model for the disk driver to optimize performance.
  final String? io;
  /// Sets the I/O event file descriptor for monitoring I/O operations on the disk.
  final String? ioEventFd;
  /// Specifies the I/O thread configuration for the disk driver.
  final double? ioThread;
  /// Configures the number of I/O threads used for this disk.
  final DomainDevicesDiskDriverIoThreads? ioThreads;
  /// Configures IOMMU support for the disk driver, affecting memory management.
  final String? iommu;
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final DomainDevicesDiskDriverMetadataCache? metadataCache;
  /// Sets the name of the driver used for the disk device.
  final String? name;
  /// Configures whether the disk driver is packed, impacting performance and resource usage.
  final String? packed;
  /// Controls whether a page per virtqueue is used in the driver configuration.
  final String? pagePerVq;
  /// Sets the size of the I/O queue for the disk driver.
  final double? queueSize;
  /// Configures the number of queues for the disk driver, enhancing parallel processing.
  final double? queues;
  /// Sets the policy for handling read errors encountered by the disk driver.
  final String? rerrorPolicy;
  /// Configures the driver type to control how the disk interfaces with the system.
  final String? type;

  /// Creates a new [DomainDevicesDiskDriver].
  /// [ats] Controls the Address Translation Services (ATS) for this disk device.
  /// [cache] Sets the caching mode for the disk, affecting performance characteristics.
  /// [copyOnRead] Configures whether copy-on-read functionality is enabled for the disk.
  /// [detectZeros] Determines if zero-detect features are enabled for the disk's driver.
  /// [discard] Controls the handling of discard operations by the disk driver.
  /// [discardNoUnref] Indicates whether unreferenced blocks should be discarded.
  /// [errorPolicy] Configures the policy for handling errors reported by the disk driver.
  /// [eventIdx] Sets the event index for the disk driver, which can be used in event handling.
  /// [io] Configures the I/O threading model for the disk driver to optimize performance.
  /// [ioEventFd] Sets the I/O event file descriptor for monitoring I/O operations on the disk.
  /// [ioThread] Specifies the I/O thread configuration for the disk driver.
  /// [ioThreads] Configures the number of I/O threads used for this disk.
  /// [iommu] Configures IOMMU support for the disk driver, affecting memory management.
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [name] Sets the name of the driver used for the disk device.
  /// [packed] Configures whether the disk driver is packed, impacting performance and resource usage.
  /// [pagePerVq] Controls whether a page per virtqueue is used in the driver configuration.
  /// [queueSize] Sets the size of the I/O queue for the disk driver.
  /// [queues] Configures the number of queues for the disk driver, enhancing parallel processing.
  /// [rerrorPolicy] Sets the policy for handling read errors encountered by the disk driver.
  /// [type] Configures the driver type to control how the disk interfaces with the system.
  DomainDevicesDiskDriver({
    this.ats,
    this.cache,
    this.copyOnRead,
    this.detectZeros,
    this.discard,
    this.discardNoUnref,
    this.errorPolicy,
    this.eventIdx,
    this.io,
    this.ioEventFd,
    this.ioThread,
    this.ioThreads,
    this.iommu,
    this.metadataCache,
    this.name,
    this.packed,
    this.pagePerVq,
    this.queueSize,
    this.queues,
    this.rerrorPolicy,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ats': ?ats,
      'cache': ?cache,
      'copyOnRead': ?copyOnRead,
      'detectZeros': ?detectZeros,
      'discard': ?discard,
      'discardNoUnref': ?discardNoUnref,
      'errorPolicy': ?errorPolicy,
      'eventIdx': ?eventIdx,
      'io': ?io,
      'ioEventFd': ?ioEventFd,
      'ioThread': ?ioThread,
      'ioThreads': ?ioThreads == null ? null : ioThreads!.toMap(),
      'iommu': ?iommu,
      'metadataCache': ?metadataCache == null ? null : metadataCache!.toMap(),
      'name': ?name,
      'packed': ?packed,
      'pagePerVq': ?pagePerVq,
      'queueSize': ?queueSize,
      'queues': ?queues,
      'rerrorPolicy': ?rerrorPolicy,
      'type': ?type,
    };
  }

  factory DomainDevicesDiskDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriver(
      ats: map['ats'] == null ? null : map['ats'] as String,
      cache: map['cache'] == null ? null : map['cache'] as String,
      copyOnRead: map['copyOnRead'] == null ? null : map['copyOnRead'] as String,
      detectZeros: map['detectZeros'] == null ? null : map['detectZeros'] as String,
      discard: map['discard'] == null ? null : map['discard'] as String,
      discardNoUnref: map['discardNoUnref'] == null ? null : map['discardNoUnref'] as String,
      errorPolicy: map['errorPolicy'] == null ? null : map['errorPolicy'] as String,
      eventIdx: map['eventIdx'] == null ? null : map['eventIdx'] as String,
      io: map['io'] == null ? null : map['io'] as String,
      ioEventFd: map['ioEventFd'] == null ? null : map['ioEventFd'] as String,
      ioThread: map['ioThread'] == null ? null : map['ioThread'] as double,
      ioThreads: map['ioThreads'] == null ? null : DomainDevicesDiskDriverIoThreads.fromMap((map['ioThreads'] as Map).cast<String, dynamic>()),
      iommu: map['iommu'] == null ? null : map['iommu'] as String,
      metadataCache: map['metadataCache'] == null ? null : DomainDevicesDiskDriverMetadataCache.fromMap((map['metadataCache'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      packed: map['packed'] == null ? null : map['packed'] as String,
      pagePerVq: map['pagePerVq'] == null ? null : map['pagePerVq'] as String,
      queueSize: map['queueSize'] == null ? null : map['queueSize'] as double,
      queues: map['queues'] == null ? null : map['queues'] as double,
      rerrorPolicy: map['rerrorPolicy'] == null ? null : map['rerrorPolicy'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

