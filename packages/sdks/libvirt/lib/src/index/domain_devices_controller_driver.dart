// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_controller_driver_io_threads.dart';

class DomainDevicesControllerDriver {
  /// Enables or disables the Address Translation Services for the controller driver.
  final pulumi.Input<String>? ats;
  /// Sets the number of commands that can be issued per Logical Unit Number (LUN) by the controller driver.
  final pulumi.Input<double>? cmdPerLun;
  /// Configures the I/O event file descriptor settings for the controller driver, optimizing event handling.
  final pulumi.Input<String>? ioEventFd;
  /// Specifies the I/O thread associated with the controller driver to improve efficiency.
  final pulumi.Input<double>? ioThread;
  /// Allows the definition of multiple I/O threads for the controller driver.
  final pulumi.Input<DomainDevicesControllerDriverIoThreads>? ioThreads;
  /// Enables or disables the I/O Memory Management Unit (IOMMU) for the controller driver.
  final pulumi.Input<String>? iommu;
  /// Configures the maximum number of sectors that can be processed at once by the controller driver.
  final pulumi.Input<double>? maxSectors;
  /// Enables or disables the packing of requests for the controller driver to improve efficiency.
  final pulumi.Input<String>? packed;
  /// Configures whether to allocate a separate page for each Virtqueue (VQ) in the controller driver.
  final pulumi.Input<String>? pagePerVq;
  /// Sets the number of queues that can be used by the controller driver.
  final pulumi.Input<double>? queues;

  /// Creates a new [DomainDevicesControllerDriver].
  /// [ats] Enables or disables the Address Translation Services for the controller driver.
  /// [cmdPerLun] Sets the number of commands that can be issued per Logical Unit Number (LUN) by the controller driver.
  /// [ioEventFd] Configures the I/O event file descriptor settings for the controller driver, optimizing event handling.
  /// [ioThread] Specifies the I/O thread associated with the controller driver to improve efficiency.
  /// [ioThreads] Allows the definition of multiple I/O threads for the controller driver.
  /// [iommu] Enables or disables the I/O Memory Management Unit (IOMMU) for the controller driver.
  /// [maxSectors] Configures the maximum number of sectors that can be processed at once by the controller driver.
  /// [packed] Enables or disables the packing of requests for the controller driver to improve efficiency.
  /// [pagePerVq] Configures whether to allocate a separate page for each Virtqueue (VQ) in the controller driver.
  /// [queues] Sets the number of queues that can be used by the controller driver.
  const DomainDevicesControllerDriver({
    this.ats,
    this.cmdPerLun,
    this.ioEventFd,
    this.ioThread,
    this.ioThreads,
    this.iommu,
    this.maxSectors,
    this.packed,
    this.pagePerVq,
    this.queues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ats': ?ats,
      'cmdPerLun': ?cmdPerLun,
      'ioEventFd': ?ioEventFd,
      'ioThread': ?ioThread,
      'ioThreads': ?pulumi.Input.mapOptionalInputValue<DomainDevicesControllerDriverIoThreads, Map<String, dynamic>>(ioThreads, (value) => value.toMap()),
      'iommu': ?iommu,
      'maxSectors': ?maxSectors,
      'packed': ?packed,
      'pagePerVq': ?pagePerVq,
      'queues': ?queues,
    };
  }

  factory DomainDevicesControllerDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerDriver(
      ats: (() { final guardedValue = map['ats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cmdPerLun: (() { final guardedValue = map['cmdPerLun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      ioEventFd: (() { final guardedValue = map['ioEventFd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ioThread: (() { final guardedValue = map['ioThread']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      ioThreads: (() { final guardedValue = map['ioThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesControllerDriverIoThreads.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSectors: (() { final guardedValue = map['maxSectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      packed: (() { final guardedValue = map['packed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagePerVq: (() { final guardedValue = map['pagePerVq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queues: (() { final guardedValue = map['queues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

