// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_driver_guest.dart';
import 'domain_devices_interface_driver_host.dart';

class DomainDevicesInterfaceDriver {
  /// Enables or disables Address Translation Services (ATS) for the interface driver, affecting how the interface processes addresses.
  final pulumi.Input<String?>? ats;
  /// Controls the event index for the interface driver, which can influence how events are processed and reported.
  final pulumi.Input<String?>? eventIdx;
  /// Sets parameters specific to the guest OS for interface driver configuration, allowing for optimizations tailored to the guest environment.
  final pulumi.Input<DomainDevicesInterfaceDriverGuest?>? guest;
  /// Configures parameters specific to the host for interface driver settings, influencing how the host interacts with the interface.
  final pulumi.Input<DomainDevicesInterfaceDriverHost?>? host;
  /// Configures the use of I/O event file descriptors for the interface driver, impacting how I/O operations are managed.
  final pulumi.Input<String?>? ioEventFd;
  /// Enables or disables Input/Output Memory Management Unit (IOMMU) support for the interface driver, which affects memory management for I/O operations.
  final pulumi.Input<String?>? iommu;
  /// Specifies the name of the driver associated with the interface, allowing for custom driver configurations.
  final pulumi.Input<String?>? name;
  /// Configures whether packed ring support is enabled or disabled for the driver, impacting how packet data is managed.
  final pulumi.Input<String?>? packed;
  /// Enables or disables the page per virtual queue feature for the driver, influencing memory management for packet queues.
  final pulumi.Input<String?>? pagePerVq;
  /// Sets the number of queues for the driver, which can enhance performance by distributing traffic across multiple processing paths.
  final pulumi.Input<double?>? queues;
  /// Enables or disables Receive Side Scaling (RSS) for the driver, allowing for better distribution of incoming traffic across CPUs.
  final pulumi.Input<String?>? rss;
  /// Controls whether RSS hash reporting is enabled for the driver, influencing how hash values for packet routing are handled.
  final pulumi.Input<String?>? rssHashReport;
  /// Configures the size of the receive queue for the driver, impacting how packets are buffered during reception.
  final pulumi.Input<double?>? rxQueueSize;
  /// Configures the transmission mode for the network interface driver.
  final pulumi.Input<String?>? txMode;
  /// Sets the size of the transmit queue for the network interface driver.
  final pulumi.Input<double?>? txQueueSize;

  /// Creates a new [DomainDevicesInterfaceDriver].
  /// [ats] Enables or disables Address Translation Services (ATS) for the interface driver, affecting how the interface processes addresses.
  /// [eventIdx] Controls the event index for the interface driver, which can influence how events are processed and reported.
  /// [guest] Sets parameters specific to the guest OS for interface driver configuration, allowing for optimizations tailored to the guest environment.
  /// [host] Configures parameters specific to the host for interface driver settings, influencing how the host interacts with the interface.
  /// [ioEventFd] Configures the use of I/O event file descriptors for the interface driver, impacting how I/O operations are managed.
  /// [iommu] Enables or disables Input/Output Memory Management Unit (IOMMU) support for the interface driver, which affects memory management for I/O operations.
  /// [name] Specifies the name of the driver associated with the interface, allowing for custom driver configurations.
  /// [packed] Configures whether packed ring support is enabled or disabled for the driver, impacting how packet data is managed.
  /// [pagePerVq] Enables or disables the page per virtual queue feature for the driver, influencing memory management for packet queues.
  /// [queues] Sets the number of queues for the driver, which can enhance performance by distributing traffic across multiple processing paths.
  /// [rss] Enables or disables Receive Side Scaling (RSS) for the driver, allowing for better distribution of incoming traffic across CPUs.
  /// [rssHashReport] Controls whether RSS hash reporting is enabled for the driver, influencing how hash values for packet routing are handled.
  /// [rxQueueSize] Configures the size of the receive queue for the driver, impacting how packets are buffered during reception.
  /// [txMode] Configures the transmission mode for the network interface driver.
  /// [txQueueSize] Sets the size of the transmit queue for the network interface driver.
  const DomainDevicesInterfaceDriver({
    this.ats,
    this.eventIdx,
    this.guest,
    this.host,
    this.ioEventFd,
    this.iommu,
    this.name,
    this.packed,
    this.pagePerVq,
    this.queues,
    this.rss,
    this.rssHashReport,
    this.rxQueueSize,
    this.txMode,
    this.txQueueSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ats': ?ats,
      'eventIdx': ?eventIdx,
      'guest': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceDriverGuest, Map<String, dynamic>>(guest, (value) => value.toMap()),
      'host': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceDriverHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'ioEventFd': ?ioEventFd,
      'iommu': ?iommu,
      'name': ?name,
      'packed': ?packed,
      'pagePerVq': ?pagePerVq,
      'queues': ?queues,
      'rss': ?rss,
      'rssHashReport': ?rssHashReport,
      'rxQueueSize': ?rxQueueSize,
      'txMode': ?txMode,
      'txQueueSize': ?txQueueSize,
    };
  }

  factory DomainDevicesInterfaceDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceDriver(
      ats: (() { final guardedValue = map['ats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventIdx: (() { final guardedValue = map['eventIdx']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guest: (() { final guardedValue = map['guest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceDriverGuest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceDriverHost.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ioEventFd: (() { final guardedValue = map['ioEventFd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iommu: (() { final guardedValue = map['iommu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packed: (() { final guardedValue = map['packed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagePerVq: (() { final guardedValue = map['pagePerVq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queues: (() { final guardedValue = map['queues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      rss: (() { final guardedValue = map['rss']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rssHashReport: (() { final guardedValue = map['rssHashReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rxQueueSize: (() { final guardedValue = map['rxQueueSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      txMode: (() { final guardedValue = map['txMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      txQueueSize: (() { final guardedValue = map['txQueueSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
